using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using ProvaEsame.DB;
using ProvaEsame.DB.Entities;
using ProvaEsame.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace ProvaEsame.Controllers
{
    
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> logger;
        private SignInManager<User> signInManager;
        private UserManager<User> userManager;
        private UserDBContext dbContext;
        private readonly Repository repository;

        public HomeController(ILogger<HomeController> logger, SignInManager<User> signInManager, UserManager<User> userManager, UserDBContext dbContext, Repository repository)
        {
            this.signInManager = signInManager;
            this.userManager = userManager;
            this.dbContext = dbContext;
            this.repository = repository;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Prenotazione()
        {

            List<PrenotazionePageModel> prenotazionePageModel = new List<PrenotazionePageModel>();

            List<Replica> Repliche = this.repository.GetRepliche();
            foreach (Replica r in Repliche)
            {

                    List<Evento> listaEventiByID = this.repository.GetEventiByID(r.CodEvento);
                    foreach (Evento e in listaEventiByID)
                    {

                        List<Locale> listaLocaliByID = this.repository.GetLocaliByID(e.CodLocale);
                        foreach (Locale l in listaLocaliByID)
                        {
                            prenotazionePageModel.Add(new PrenotazionePageModel()
                            {
                                CodReplica = r.CodReplica,
                                NomeEvento = e.NomeEvento,
                                DataEOra = r.DataEOra,
                                NomeLocale = l.Nome,
                                Luogo = l.Luogo,
                                Posti = l.Posti,
                                Annullato = r.Annullato
                            });
                        }
                    }
            }
            return View(prenotazionePageModel);

        }

        public IActionResult UserPage()
        {
            return View();
        }

        public IActionResult AdminPage()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        // Create User
        [HttpPost("CreateUser")]
        public async Task<IActionResult> CreateUser([FromServices] UserManager<User> userManager, UsersAndRolesViewModel usersViewModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    User user = await userManager.FindByEmailAsync(usersViewModel.Email);
                    if (user == null)
                    {
                        user = new User
                        {
                            UserName = usersViewModel.UserName,
                            Email = usersViewModel.Email
                        };
                        IdentityResult result = await userManager.CreateAsync(user, usersViewModel.Password);
                        if (result.Succeeded)
                            return Json("OK");

                        string errors = string.Empty;
                        foreach (IdentityError error in result.Errors)
                            errors += error.Code + ": " + error.Description + "\n";
                        return Json(errors);
                    }
                    else
                        return Json("Email già esistente, riprova.");
                }
            }
            catch (Exception ex)
            {
                logger.LogError(ex, ex.Message);
            }
            return Json("Richiesta non valida.");
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginModel loginModel)
        {
            try
            {
                User user = await userManager.FindByNameAsync(loginModel.UserName);
                if (user != null)
                {
                    var result = await signInManager.PasswordSignInAsync(loginModel.UserName, loginModel.Password, false, lockoutOnFailure: true);
                    if (result.Succeeded)
                    {

                    }
                    else
                    {
                        return BadRequest();
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return Redirect("Login");
        }

        [Authorize]
        public async Task<IActionResult> Logout()
        {
            try
            {
                if (signInManager.IsSignedIn(User))
                {
                    await signInManager.SignOutAsync();
                }
            }
            catch (Exception ex)
            {
            }
            return Redirect("Index");
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
