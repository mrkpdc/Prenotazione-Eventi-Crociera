using Microsoft.AspNetCore.Mvc;
using ProvaEsame.DB;
using ProvaEsame.DB.Entities;
using ProvaEsame.Models;
using System.Collections.Generic;
using System.Threading.Tasks;
using System;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

//Mancano da implementare
//    - modifica di posti o eliminazione prenotazione da parte dell'utente (e dell'admin)
//    - controllo dei posti rimanenti e avviso in caso di overbooking
//    - miglioramenti grafici frontend

namespace ProvaEsame.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class APIController : ControllerBase
    {
        private readonly Repository repository;
        private UserManager<User> userManager;
        public APIController(Repository repository, UserManager<User> userManager)
        {
            this.repository = repository;
            this.userManager = userManager;
        }


        //API di tipo Post per prendere i dati della prenotazione dal front-end e inviarli al DB
        [HttpPost("InserisciPrenotazione")]
        public async Task<IActionResult> InserisciPrenotazione([FromBody] PrenotazioneModel model)
        {

            Prenotazione prenotazione = new Prenotazione();
            prenotazione.CodUtente = userManager.GetUserId(User);
            prenotazione.CodReplica = model.CodReplica.ToString();
            prenotazione.Quantita = int.Parse(model.Quantita);

            this.repository.InserisciPrenotazione(prenotazione);

            return Ok();
        }

        //API di tipo Get per ricevere dal DB la lista delle prenotazioni eseguite dallo user loggato
        [HttpGet("ListaPrenotazioni")]
        public async Task<List<PrenotazioneModel>> ListaPrenotazioni()
        {
            string userID = userManager.GetUserId(User);
            List<PrenotazioneModel> prenotazioni = this.repository.GetListaPrenotazioniUser(userID);
            return (prenotazioni);
        }

        //API di tipo Get per ricevere dal DB la lista di tutte le prenotazioni
        [HttpGet("ListaPrenotazioniAdmin")]
        public async Task<List<PrenotazioneModel>> ListaPrenotazioniAdmin()
        {
            List<PrenotazioneModel> prenotazioni = this.repository.GetListaPrenotazioniAdmin();
            return (prenotazioni);
        }

    }
}
