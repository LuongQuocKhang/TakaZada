namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CPU")]
    public partial class CPU
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Image { get; set; }

        public int? WarrantyPeriod { get; set; }

        [StringLength(10)]
        public string TradeMark { get; set; }

        [StringLength(30)]
        public string CPUType { get; set; }

        [StringLength(30)]
        public string CPULine { get; set; }

        public int? CoreNum { get; set; }

        public int? ThreadNum { get; set; }

        [StringLength(30)]
        public string CoreCPU { get; set; }

        [StringLength(30)]
        public string BasicPulse { get; set; }

        [StringLength(30)]
        public string MaxPulse { get; set; }

        [StringLength(30)]
        public string CacheCPU { get; set; }

        [StringLength(30)]
        public string Size { get; set; }

        [StringLength(4000)]
        public string Description { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(50)]
        public string Price { get; set; }
        public int Quantity { get; set; }
    }
}
