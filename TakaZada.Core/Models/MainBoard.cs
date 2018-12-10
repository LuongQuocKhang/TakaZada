namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MainBoard")]
    public partial class MainBoard
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Image { get; set; }

        [StringLength(4000)]
        public string Description { get; set; }

        [StringLength(25)]
        public string TradeMark { get; set; }

        [StringLength(10)]
        public string Type { get; set; }

        [StringLength(255)]
        public string Model { get; set; }

        [StringLength(255)]
        public string Chipset { get; set; }

        [StringLength(10)]
        public string MaxRamMemory { get; set; }

        [StringLength(255)]
        public string RamType { get; set; }

        public int? RamNum { get; set; }

        [StringLength(25)]
        public string HDMINum { get; set; }

        public int? WarrantyPeriod { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(50)]
        public string Price { get; set; }
        public int Quantity { get; set; }
    }
}
