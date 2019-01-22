using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.ViewModels
{
    public class EducacaoAvaliacaoViewModel
    {
        public int EducacaoAvaliacaoId { get; set; }

        [Display(Name = "Educação")]
        [Required(ErrorMessage = "Obrigatório informar o nome da instituição.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar o nome da instituição.")]
        public int EducacaoId { get; set; }

        [Display(Name = "Avaliação")]
        [Required(ErrorMessage = "Obrigatório informar o nome da avaliação.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar o nome da avaliação.")]
        public int AvaliacaoId { get; set; }

        public float? Nota { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o ano.")]
        [Remote("VerificarVinculacao", "EducacaoAvaliacao", AreaReference.UseCurrent, ErrorMessage = "Está avaliação já foi cadastrada neste ano.", AdditionalFields = "EducacaoAvaliacaoId, EducacaoId, AvaliacaoId")]
        public int Ano { get; set; }

        public virtual Educacao Educacao { get; set; }

        public virtual Avaliacao Avaliacao { get; set; }
    }
}