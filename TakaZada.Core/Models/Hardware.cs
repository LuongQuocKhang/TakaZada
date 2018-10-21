namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hardware")]
    public partial class Hardware
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

        [StringLength(10)]
        public string Memory { get; set; }

        [StringLength(10)]
        public string Label { get; set; }

        [StringLength(255)]
        public string ReadSpeed { get; set; }

        [StringLength(255)]
        public string WriteSpeed { get; set; }

        [StringLength(255)]
        public string Size { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(50)]
        public string Price { get; set; }
    }
}
