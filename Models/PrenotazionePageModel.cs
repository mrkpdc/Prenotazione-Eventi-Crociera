using System;

namespace ProvaEsame.Models
{
    public class PrenotazionePageModel
    {
        public string CodReplica { get; set; }
        public string NomeEvento { get; set; }
        public DateTime? DataEOra { get; set; }

        public string NomeLocale { get; set; }

        public string Luogo { get; set; }

        public int? Posti { get; set; }

        public bool? Annullato { get; set; }

    }
}
