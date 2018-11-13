namespace TakaZada.Core.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ActivityLog")]
    public partial class ActivityLog
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string Action { get; set; }

        public int? UserId { get; set; }

        [StringLength(50)]
        public string IP { get; set; }

        [StringLength(255)]
        public string UserAgent { get; set; }

        public DateTime? ActionTime { get; set; }
    }
}
