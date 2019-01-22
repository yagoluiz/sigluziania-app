using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("tipo_saude")]
    public class TipoSaude
    {
        public TipoSaude()
        {
            this.Saude = new List<Saude>();
        }

        [Key, Column("id_tipo_saude")]
        public int TipoSaudeId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<Saude> Saude { get; set; }
    }
}