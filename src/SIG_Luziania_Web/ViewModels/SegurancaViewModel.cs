using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;

namespace SIG_Luziania_Web.ViewModels
{
    public class SegurancaViewModel
    {
        public int SegurancaId { get; set; }

        [Display(Name = "Tipo Segurança")]
        public int TipoSegurancaId { get; set; }

        public string Nome { get; set; }

        [Display(Name = "Endereço")]
        public string Endereco { get; set; }

        public string Bairro { get; set; }

        public string Cep { get; set; }

        public string Telefone { get; set; }

        public double Latitude { get; set; }

        public double Longitude { get; set; }

        public virtual Cidade Cidade { get; set; }

        public virtual TipoSeguranca TipoSeguranca { get; set; }
    }
}