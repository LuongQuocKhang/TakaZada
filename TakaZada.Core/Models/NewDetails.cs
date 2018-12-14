using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.Core.Models
{
    [Table("NewDetails")]
    public class NewDetails
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int NewDetailId { get; set; }
        [StringLength(10000)]
        public string Details { get; set; }
        [StringLength(1000)]
        public string Solution { get; set; }
        [StringLength(255)]
        public string Item { get; set; }
        [ForeignKey("New")]
        public int NewId { get; set; }
        public virtual New New {get;set;}
    }
}
