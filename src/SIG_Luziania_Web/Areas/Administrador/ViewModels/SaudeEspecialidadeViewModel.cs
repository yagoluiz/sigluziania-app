using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.ViewModels
{
    public class SaudeEspecialidadeViewModel
    {
        public int SaudeEspecialidadeId { get; set; }

        [Display(Name = "Saúde")]
        [Required(ErrorMessage = "Obrigatório informar a instituição saúde.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar a instituição saúde.")]
        public int SaudeId { get; set; }

        [Display(Name = "Especialidade")]
        [Required(ErrorMessage = "Obrigatório informar a especialidade.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar a especialidade.")]
        [Remote("VerificarVinculo", "SaudeEspecialidade", AreaReference.UseCurrent, ErrorMessage = "Especialidade já está vinculada a essa instituição de saúde.", AdditionalFields = "SaudeEspecialidadeId, SaudeId")]
        public int EspecialidadeId { get; set; }

        public virtual Saude Saude { get; set; }

        public virtual Especialidade Especialidade { get; set; }
    }
}