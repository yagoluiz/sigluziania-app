using SIG_Luziania_Web.Enum;
using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;

namespace SIG_Luziania_Web.ViewModels
{
    public class EducacaoViewModel
    {
        public int EducacaoId { get; set; }

        [Display(Name = "Cód. Mec")]
        public int? MecId { get; set; }

        public string Nome { get; set; }

        [Display(Name = "Endereço")]
        public string Endereco { get; set; }

        public string Bairro { get; set; }

        public string Cep { get; set; }

        public string Telefone { get; set; }

        public string Gestor { get; set; }

        public Zona Zona { get; set; }

        [Display(Name = "Dependência Adm.")]
        public DependenciaAdministrativa DependenciaAdministrativa { get; set; }

        public double Latitude { get; set; }

        public double Longitude { get; set; }

        public virtual Cidade Cidade { get; set; }
    }
}