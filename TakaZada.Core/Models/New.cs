using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.Core.Models
{
    [Table("News")]
    public class New
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int NewId { get; set; }
        [StringLength(255)]
        public string Title { get; set; }
        [StringLength(1000)]
        public string BriefDetail { get; set; }
        [StringLength(100)]
        public string Type { get; set; }
        [StringLength(1000)]
        public string Image { get; set; }
        [StringLength(100)]
        public string Extra { get; set; }
    }
}
