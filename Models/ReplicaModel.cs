using System;

namespace ProvaEsame.Models
{
    public class ReplicaModel
    {
        public string CodReplica { get; set; }
        public string CodEvento { get; set; }
        public DateTime DataEOra { get; set; }
        public bool Annullato { get; set; }
    }
}
