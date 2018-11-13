namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("VGA")]
    public partial class VGA
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Image { get; set; }

        [StringLength(10)]
        public string TradeMark { get; set; }

        [StringLength(30)]
        public string Label { get; set; }

        [StringLength(30)]
        public string ChipsetManufacturer { get; set; }

        [StringLength(255)]
        public string Model { get; set; }

        [Column("VGA")]
        [StringLength(255)]
        public string VGA1 { get; set; }

        [StringLength(255)]
        public string BoostClock { get; set; }

        [StringLength(10)]
        public string VGAMemory { get; set; }

        [StringLength(25)]
        public string RamType { get; set; }

        [StringLength(255)]
        public string MaxResolution { get; set; }

        [StringLength(25)]
        public string Directx { get; set; }

        [StringLength(25)]
        public string Size { get; set; }

        public int? WarrantyPeriod { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(25)]
        public string Price { get; set; }

        [StringLength(4000)]
        public string Description { get; set; }
    }
}
