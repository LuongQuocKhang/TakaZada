using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.Core.Models
{
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
