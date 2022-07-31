

using System.ComponentModel.DataAnnotations;

namespace ProvaEsame.DB.Entities
{
    public class Locale
    {
        [Key]
        public string CodLocale { get; set; }
        public string Nome { get; set; }
        public string Luogo { get; set; }
        public int? Posti { get; set; }

    }
}
