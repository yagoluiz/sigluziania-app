using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    public class Especialidade
    {
        public Especialidade()
        {
            this.SaudeEspecialidade = new List<SaudeEspecialidade>();
        }

        [Key, Column("id_especialidade")]
        public int EspecialidadeId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<SaudeEspecialidade> SaudeEspecialidade { get; set; }
    }
}