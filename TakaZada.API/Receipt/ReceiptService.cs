using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Receipt
{
    public class ReceiptService : IReceiptReponsitory , ILoadReceipt
    {
        public bool AddDetail(CartDetails cartdetail, UserAccount user)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var receipt = db.Receipts.FirstOrDefault(x => x.Email == user.Email);
                    double total = Int32.Parse(cartdetail.price.Replace(".", "").Replace("đ", "")) * cartdetail.Quantity;
                    if (receipt != null)
                    {
                        ReceiptDetail detail = new ReceiptDetail()
                        {
                            ReceiptId = receipt.ReceiptId,
                            Name = cartdetail.Name,
                            Type = cartdetail.type,
                            Quantity = cartdetail.Quantity,
                            Price = cartdetail.price,
                            Total = total
                        };
                        var cartid = cartdetail.CartId;
                        var cartdelete = db.CartDetails.FirstOrDefault(x => x.CartId == cartid);


                        db.CartDetails.Remove(cartdelete);
                        db.ReceiptDetails.Add(detail);
                        db.SaveChanges();
                        return true;
                    }
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool AddReceipt(Core.Models.Receipt receipt)
        {
            try
            {
                using (var db = new DBContext())
                {
                    receipt.Status = "Đang xử lý";
                    db.Receipts.Add(receipt);
                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { } return false;
        }

        public Core.Models.Receipt CreateReceipt(string Email, string Name, string SDT, double DeliveryCharges, double total)
        {
            return new Core.Models.Receipt() { Email = Email, UserName = Name, SDT = SDT, DeliveryCharges = DeliveryCharges, TotalPrice = total };
        }
    }
}
