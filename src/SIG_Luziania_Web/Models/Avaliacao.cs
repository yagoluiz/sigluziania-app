using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("avaliacao")]
    public class Avaliacao
    {
        public Avaliacao()
        {
            this.EducacaoAvaliacao = new List<EducacaoAvaliacao>();
        }

        [Key, Column("id_avaliacao")]
        public int AvaliacaoId { get; set; }

        [Column("nome")]
        public string Nome { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        public virtual ICollection<EducacaoAvaliacao> EducacaoAvaliacao { get; set; }
    }
}