using System.Data.Entity;

namespace SIG_Luziania_Web.Models
{
    public class SigLuzianiaContexto : DbContext
    {
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Perfil> Perfil { get; set; }
        public DbSet<Cidade> Cidade { get; set; }
        public DbSet<TipoLazer> TipoLazer { get; set; }
        public DbSet<Lazer> Lazer { get; set; }
        public DbSet<TipoSeguranca> TipoSeguranca { get; set; }
        public DbSet<Seguranca> Seguranca { get; set; }
        public DbSet<Educacao> Educacao { get; set; }
        public DbSet<Avaliacao> Avaliacao { get; set; }
        public DbSet<EducacaoAvaliacao> EducacaoAvaliacao { get; set; }
        public DbSet<TipoSaude> TipoSaude { get; set; }
        public DbSet<Saude> Saude { get; set; }
        public DbSet<Especialidade> Especialidade { get; set; }
        public DbSet<SaudeEspecialidade> SaudeEspecialidade { get; set; }        

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Usuario>().ToTable("usuario", "public");
            modelBuilder.Entity<Perfil>().ToTable("perfil", "public");
            modelBuilder.Entity<Cidade>().ToTable("cidade", "public");
            modelBuilder.Entity<TipoLazer>().ToTable("tipo_lazer", "public");
            modelBuilder.Entity<Lazer>().ToTable("lazer", "public");
            modelBuilder.Entity<TipoSeguranca>().ToTable("tipo_seguranca", "public");
            modelBuilder.Entity<Seguranca>().ToTable("seguranca", "public");
            modelBuilder.Entity<Educacao>().ToTable("educacao", "public");
            modelBuilder.Entity<Avaliacao>().ToTable("avaliacao", "public");
            modelBuilder.Entity<EducacaoAvaliacao>().ToTable("educacao_avaliacao", "public");
            modelBuilder.Entity<TipoSaude>().ToTable("tipo_saude", "public");
            modelBuilder.Entity<Especialidade>().ToTable("especialidade", "public");
            modelBuilder.Entity<Saude>().ToTable("saude", "public");
            modelBuilder.Entity<SaudeEspecialidade>().ToTable("saude_especialidade", "public");
        }
    }
}