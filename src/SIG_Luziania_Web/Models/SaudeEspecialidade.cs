using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SIG_Luziania_Web.Models
{
    [Table("saude_especialidade")]
    public class SaudeEspecialidade
    {
        [Key, Column("id_saude_especialidade")]
        public int SaudeEspecialidadeId { get; set; }

        [Column("saude_id")]
        public int SaudeId { get; set; }

        [Column("especialidade_id")]
        public int EspecialidadeId { get; set; }

        [ForeignKey("SaudeId")]
        public virtual Saude Saude { get; set; }

        [ForeignKey("EspecialidadeId")]
        public virtual Especialidade Especialidade { get; set; }
    }
}