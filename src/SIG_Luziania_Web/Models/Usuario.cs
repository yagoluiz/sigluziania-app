using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("usuario")]
    public class Usuario
    {
        [Key, Column("id_usuario")]
        public int UsuarioId { get; set; }

        [Column("perfil_id")]
        public int PerfilId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("login")]
        public string Login { get; set; }

        [Column("senha")]
        public string Senha { get; set; }

        [Column("area")]
        public string Area { get; set; }

        [ForeignKey("PerfilId")]
        public virtual Perfil Perfil { get; set; }
    }
}