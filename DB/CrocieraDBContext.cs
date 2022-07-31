using Microsoft.EntityFrameworkCore;
using ProvaEsame.DB.Entities;

namespace ProvaEsame.DB
{
    public class CrocieraDBContext : DbContext
    {
        public CrocieraDBContext(DbContextOptions<CrocieraDBContext> options)
    : base(options)
        {
        }
        public DbSet<Evento> Eventi { get; set; }
        public DbSet<Locale> Locali { get; set; }
        public DbSet<Prenotazione> Prenotazioni { get; set; }
        public DbSet<Replica> Repliche { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }

    }
}
