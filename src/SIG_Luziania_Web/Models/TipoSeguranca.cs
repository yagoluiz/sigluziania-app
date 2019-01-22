using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("tipo_seguranca")]
    public class TipoSeguranca
    {
        public TipoSeguranca()
        {
            this.Seguranca = new List<Seguranca>();
        }

        [Key, Column("id_tipo_seguranca")]
        public int TipoSegurancaId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<Seguranca> Seguranca { get; set; }
    }
}