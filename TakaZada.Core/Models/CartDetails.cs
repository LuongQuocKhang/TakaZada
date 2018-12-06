using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.Core.Models
{
    [Table("CartDetails")]
    public class CartDetails
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public string type { get; set; }
        [ForeignKey("Cart")]
        public int CartId { get; set; }
        public string ItemId { get; set; }
        public int Quantity { get; set; }
        public string price { get; set; }
        public virtual Cart Cart { get; set; }
    }
}
