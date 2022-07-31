

using System;
using System.ComponentModel.DataAnnotations;

namespace ProvaEsame.DB.Entities
{
    public class Prenotazione
    {
        [Key]
        public Guid CodPrenotazione { get; set; }
        public string CodUtente { get; set; }
        public string CodReplica { get; set; }
        public int Quantita { get; set; }

    }
}
