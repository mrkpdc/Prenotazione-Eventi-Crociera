

using System.ComponentModel.DataAnnotations;

namespace ProvaEsame.DB.Entities
{
    public class Evento
    {
        [Key]
        public string CodEvento { get; set; }
        public string CodLocale { get; set; }
        public string NomeEvento { get; set; }

    }
}
