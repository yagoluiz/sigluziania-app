using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("perfil")]
    public class Perfil
    {
        public Perfil()
        {
            this.Usuario = new List<Usuario>();
        }

        [Key, Column("id_perfil")]        
        public int PerfilId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}