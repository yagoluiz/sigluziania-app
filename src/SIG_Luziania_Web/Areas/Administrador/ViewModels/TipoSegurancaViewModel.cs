using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.ViewModels
{
    public class TipoSegurancaViewModel
    {
        public int TipoSegurancaId { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o nome.")]
        [MinLength(3, ErrorMessage = "É permitido no mínimo 3 caracteres."), MaxLength(100, ErrorMessage = "É permitido no máximo 100 caracteres.")]
        [Remote("VerificarTipoSeguranca", "TipoSeguranca", AreaReference.UseCurrent, ErrorMessage = "Já existe um tipo de segurança com esse nome.", AdditionalFields = "TipoSegurancaId")]
        public string Nome { get; set; }

        [DataType(DataType.MultilineText)]
        [Display(Name = "Descrição")]
        public string Descricao { get; set; }
    }
}