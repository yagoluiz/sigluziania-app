using System.ComponentModel.DataAnnotations;

namespace SIG_Luziania_Web.ViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Obrigatório informar o login.")]
        public string Login { get; set; }

        [Required(ErrorMessage = "Obrigatório informar a senha.")]
        [DataType(DataType.Password)]
        public string Senha { get; set; }

        [Display(Name = "Lembrar?")]
        public bool Lembrar { get; set; }
    }
}
