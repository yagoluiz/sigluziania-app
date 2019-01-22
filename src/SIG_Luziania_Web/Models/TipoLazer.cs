using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("tipo_lazer")]
    public class TipoLazer
    {
        public TipoLazer()
        {
            this.Lazer = new List<Lazer>();
        }

        [Key, Column("id_tipo_lazer")]        
        public int TipoLazerId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<Lazer> Lazer { get; set; }
    }
}