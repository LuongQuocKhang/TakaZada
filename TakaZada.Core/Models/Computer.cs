namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Computer")]
    public partial class Computer
    {
        public int Id { get; set; }

        [StringLength(1000)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Image { get; set; }

        [StringLength(1000)]
        public string CPU { get; set; }

        [StringLength(255)]
        public string RAM { get; set; }

        [StringLength(255)]
        public string VideoCard { get; set; }

        [StringLength(255)]
        public string Hardware { get; set; }

        [StringLength(255)]
        public string SlotSupport { get; set; }

        [StringLength(255)]
        public string Display { get; set; }

        [StringLength(255)]
        public string Port { get; set; }

        [StringLength(255)]
        public string Extra { get; set; }

        [StringLength(255)]
        public string OS { get; set; }

        [StringLength(10)]
        public string Type { get; set; }

        [StringLength(10)]
        public string Trademark { get; set; }

        [StringLength(100)]
        public string Feature { get; set; }

        [StringLength(30)]
        public string Color { get; set; }

        [StringLength(255)]
        public string CPUSeries { get; set; }

        [StringLength(20)]
        public string ScreenSize { get; set; }

        [StringLength(255)]
        public string Resolution { get; set; }

        [StringLength(50)]
        public string StandardOfScreen { get; set; }

        [StringLength(255)]
        public string Size { get; set; }

        [StringLength(10)]
        public string Mass { get; set; }

        public int? WarrantyPeriod { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(50)]
        public string Price { get; set; }

        [StringLength(4000)]
        public string Description { get; set; }
    }
}
