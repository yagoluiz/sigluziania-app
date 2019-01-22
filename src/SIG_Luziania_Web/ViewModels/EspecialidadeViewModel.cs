using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;

namespace SIG_Luziania_Web.ViewModels
{
    public class EspecialidadeViewModel
    {
        public int SaudeEspecialidadeId { get; set; }

        [Display(Name = "Saúde")]
        public int SaudeId { get; set; }

        [Display(Name = "Especialidade")]
        public int EspecialidadeId { get; set; }

        public virtual Saude Saude { get; set; }

        public virtual Especialidade Especialidade { get; set; }
    }
}