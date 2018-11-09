namespace TakaZada.Core.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBContext : DbContext
    {
        public DBContext()
            : base("name=DBContext")
        {
        }

        public virtual DbSet<Case> Cases { get; set; }
        public virtual DbSet<CPU> CPUs { get; set; }
        public virtual DbSet<MainBoard> MainBoards { get; set; }
        public virtual DbSet<RAM> RAMs { get; set; }
        public virtual DbSet<VGA> VGAs { get; set; }
        public virtual DbSet<Computer> Computers { get; set; }
        public virtual DbSet<Hardware> Hardwares { get; set; }
        public virtual DbSet<Keyboard> Keyboards { get; set; }
        public virtual DbSet<Radiator> Radiators { get; set; }
        public virtual DbSet<ActivityLog> ActivityLogs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CPU>()
                .Property(e => e.TradeMark)
                .IsFixedLength();

            modelBuilder.Entity<MainBoard>()
                .Property(e => e.Type)
                .IsFixedLength();

            modelBuilder.Entity<MainBoard>()
                .Property(e => e.MaxRamMemory)
                .IsFixedLength();

            modelBuilder.Entity<RAM>()
                .Property(e => e.Color)
                .IsFixedLength();

            modelBuilder.Entity<RAM>()
                .Property(e => e.RamType)
                .IsFixedLength();

            modelBuilder.Entity<RAM>()
                .Property(e => e.Memory)
                .IsFixedLength();

            modelBuilder.Entity<VGA>()
                .Property(e => e.TradeMark)
                .IsFixedLength();

            modelBuilder.Entity<Computer>()
                .Property(e => e.Type)
                .IsFixedLength();

            modelBuilder.Entity<Computer>()
                .Property(e => e.Trademark)
                .IsFixedLength();

            modelBuilder.Entity<Computer>()
                .Property(e => e.CPUSeries)
                .IsFixedLength();

            modelBuilder.Entity<Computer>()
                .Property(e => e.Mass)
                .IsFixedLength();

            modelBuilder.Entity<Hardware>()
                .Property(e => e.Memory)
                .IsFixedLength();

            modelBuilder.Entity<Hardware>()
                .Property(e => e.Label)
                .IsFixedLength();
        }
    }
}
