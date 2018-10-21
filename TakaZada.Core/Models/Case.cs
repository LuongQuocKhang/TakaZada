namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Case")]
    public partial class Case
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Image { get; set; }

        [StringLength(4000)]
        public string Description { get; set; }

        public int? WarrantyPeriod { get; set; }

        [StringLength(25)]
        public string TradeMark { get; set; }

        [StringLength(25)]
        public string Model { get; set; }

        [StringLength(25)]
        public string Color { get; set; }

        [StringLength(255)]
        public string Size { get; set; }

        [StringLength(255)]
        public string MainSupport { get; set; }

        [StringLength(255)]
        public string USB { get; set; }

        [StringLength(255)]
        public string DriverBays { get; set; }

        [StringLength(255)]
        public string Slots { get; set; }

        public bool? IsDelete { get; set; }

        [StringLength(50)]
        public string Price { get; set; }
    }
}
