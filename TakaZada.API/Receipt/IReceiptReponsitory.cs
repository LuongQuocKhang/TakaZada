using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Receipt
{
    public interface IReceiptReponsitory
    {
        bool AddDetail(CartDetails cartdetail, UserAccount user);
        Core.Models.Receipt CreateReceipt(string Email, string Name, string SDT, double DeliveryCharges, double total);
        bool AddReceipt(TakaZada.Core.Models.Receipt receipt);
    }
}
