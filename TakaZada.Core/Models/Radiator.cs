namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Radiator")]
    public partial class Radiator
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

        [StringLength(25)]
        public string Label { get; set; }

        [StringLength(25)]
        public string Material { get; set; }

        [StringLength(255)]
        public string Speed { get; set; }

        [StringLength(255)]
        public string Size { get; set; }

        [StringLength(25)]
        public string FanSize { get; set; }

        [StringLength(1000)]
        public string Socket { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(50)]
        public string Price { get; set; }
    }
}
