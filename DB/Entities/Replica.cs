

using System;
using System.ComponentModel.DataAnnotations;

namespace ProvaEsame.DB.Entities
{
    public class Replica
    {
        [Key]
        public string CodReplica { get; set; }
        public string CodEvento { get; set; }
        public DateTime? DataEOra { get; set; }
        public bool? Annullato { get; set; }

    }
}
