using SIG_Luziania_Web.Models;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.ViewModels
{
    public class UsuarioViewModel
    {
        public int UsuarioId { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o login.")]
        [MinLength(5, ErrorMessage = "É permitido no mínimo 5 caracteres."), MaxLength(50, ErrorMessage = "É permitido no máximo 50 caracteres.")]
        [Remote("VerificarUsuario", "Usuario", AreaReference.UseCurrent, ErrorMessage = "Já existe um usuário com esse login.", AdditionalFields="UsuarioId")]        
        public string Login { get; set; }

        [Display(Name = "Perfil")]
        [Required(ErrorMessage = "Obrigatório informar o tipo de perfil.")]
        [Range(1, int.MaxValue, ErrorMessage = "Obrigatório informar o tipo de perfil.")]
        public int PerfilId { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o nome.")]
        [MinLength(10, ErrorMessage = "É permitido no mínimo 10 caracteres."), MaxLength(100, ErrorMessage = "É permitido no máximo 100 caracteres.")]
        public string Nome { get; set; }

        [DataType(DataType.Password)]
        [Required(ErrorMessage = "Obrigatório informar a senha.")]
        [MinLength(8, ErrorMessage = "É permitido no mínimo 8 caracteres."), MaxLength(20, ErrorMessage = "É permitido no máximo 20 caracteres.")]
        public string Senha { get; set; }

        [Display(Name = "Confirmar Senha")]
        [DataType(DataType.Password)]
        [Required(ErrorMessage = "Obrigatório confirmar a senha.")]
        [System.ComponentModel.DataAnnotations.Compare("Senha", ErrorMessage = "A senha e a confirmação da senha são diferentes.")]
        public string ConfirmarSenha { get; set; }

        [Display(Name = "Área")]
        [MaxLength(50, ErrorMessage = "É permitido no máximo 50 caracteres.")]
        public string Area { get; set; }

        public virtual Perfil Perfil { get; set; }
    }
}