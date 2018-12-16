using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.Core.Models
{
    [Table("Receipts")]
    public class Receipt
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ReceiptId { get; set; }
        public string Email { get; set; }
        public string UserName { get; set; }
        public string SDT { get; set; }
        public double DeliveryCharges { get; set; }
        public double? TotalPrice { get; set; }
        public string Status { get; set; }
    }
}
