using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Cart
{
    public class CartService : ILoadCart , ICartRepository
    {
        public bool AddToCart(CartDetails details)
        {
            try
            {
                using (var db = new DBContext())
                {
                    int cartid = details.CartId;
                    string id = details.ItemId.ToString();
                    var item = db.CartDetails.FirstOrDefault(x => x.ItemId == id && x.type == details.type && x.CartId == cartid);
                    if (item == null)
                    {
                        var cart = db.Carts.FirstOrDefault(x => x.CartId == cartid);
                        db.CartDetails.Add(details);
                    }
                    else
                    {
                        var update = db.CartDetails.FirstOrDefault(x => x.ItemId == id && x.type == details.type && x.CartId == cartid);
                        update.Quantity += details.Quantity;
                    }
                    switch (details.type)
                    {
                        case "Case":
                            var Case = db.Cases.FirstOrDefault(x => x.Id.ToString() == id);
                            Case.Quantity -= details.Quantity;
                            break;
                        case "Computer":
                            var Computer = db.Computers.FirstOrDefault(x => x.Id.ToString() == id);
                            Computer.Quantity -= details.Quantity;
                            break;
                        case "CPU":
                            var CPU = db.CPUs.FirstOrDefault(x => x.Id.ToString() == id);
                            CPU.Quantity -= details.Quantity;
                            break;
                        case "Hardware":
                            var Hardware = db.Hardwares.FirstOrDefault(x => x.Id.ToString() == id);
                            Hardware.Quantity -= details.Quantity;
                            break;
                        case "Keyboard":
                            var Keyboard = db.Keyboards.FirstOrDefault(x => x.Id.ToString() == id);
                            Keyboard.Quantity -= details.Quantity;
                            break;
                        case "Mainboard":
                            var Mainboard = db.MainBoards.FirstOrDefault(x => x.Id.ToString() == id);
                            Mainboard.Quantity -= details.Quantity;
                            break;
                        case "Radiator":
                            var Radiator = db.Radiators.FirstOrDefault(x => x.Id.ToString() == id);
                            Radiator.Quantity -= details.Quantity;
                            break;
                        case "RAM":
                            var RAM = db.RAMs.FirstOrDefault(x => x.Id.ToString() == id);
                            RAM.Quantity -= details.Quantity;
                            break;
                        case "VGA":
                            var VGA = db.VGAs.FirstOrDefault(x => x.Id.ToString() == id);
                            VGA.Quantity -= details.Quantity;
                            break;
                    }

                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public CartDetails CreateCartDetails(string type, int CartId, string ItemId, int Quantity, string price,string Name , string Image)
        {
            return new CartDetails() { type = type, CartId = CartId, ItemId = ItemId, Quantity = Quantity, price = price , Name  = Name , Image = Image };
        }

        public Core.Models.Cart LoadCartByEmail(string Email)
        {
            Core.Models.Cart cart = null;
            using (var db = new DBContext())
            {
                cart = db.Carts.FirstOrDefault(x => x.Email.Equals(Email));
                if (cart == null)
                {
                    cart = new Core.Models.Cart();
                    cart.Email = Email;
                    cart.TotalPrice = 0;
                    db.Carts.Add(cart);
                    db.SaveChanges();
                }
            }
            return cart;
        }

        public CartDetails LoadCartDetailById(int DetailId)
        {
            Core.Models.CartDetails CartDetails = null;
            using (var db = new DBContext())
            {
                CartDetails = db.CartDetails.FirstOrDefault(x => x.ID == DetailId);
            }
            return CartDetails;
        }

        public IEnumerable<CartDetails> LoadCartDetails(int Id)
        {
            List<Core.Models.CartDetails> CartDetails = null;
            using (var db = new DBContext())
            {
                CartDetails = db.CartDetails.Where(x => x.CartId == Id).ToList();
            }
            return CartDetails;
        }

        public bool RemoveCartDetail(int detailsiD)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var details = db.CartDetails.FirstOrDefault(x => x.ID == detailsiD);
                    db.CartDetails.Remove(details);
                    string id = details.ItemId.ToString();
                    switch (details.type)
                    {
                        case "Case":
                            var Case = db.Cases.FirstOrDefault(x => x.Id.ToString() == id);
                            Case.Quantity += details.Quantity;
                            break;
                        case "Computer":
                            var Computer = db.Computers.FirstOrDefault(x => x.Id.ToString() == id);
                            Computer.Quantity += details.Quantity;
                            break;
                        case "CPU":
                            var CPU = db.CPUs.FirstOrDefault(x => x.Id.ToString() == id);
                            CPU.Quantity += details.Quantity;
                            break;
                        case "Hardware":
                            var Hardware = db.Hardwares.FirstOrDefault(x => x.Id.ToString() == id);
                            Hardware.Quantity += details.Quantity;
                            break;
                        case "Keyboard":
                            var Keyboard = db.Keyboards.FirstOrDefault(x => x.Id.ToString() == id);
                            Keyboard.Quantity += details.Quantity;
                            break;
                        case "Mainboard":
                            var Mainboard = db.MainBoards.FirstOrDefault(x => x.Id.ToString() == id);
                            Mainboard.Quantity += details.Quantity;
                            break;
                        case "Radiator":
                            var Radiator = db.Radiators.FirstOrDefault(x => x.Id.ToString() == id);
                            Radiator.Quantity += details.Quantity;
                            break;
                        case "RAM":
                            var RAM = db.RAMs.FirstOrDefault(x => x.Id.ToString() == id);
                            RAM.Quantity += details.Quantity;
                            break;
                        case "VGA":
                            var VGA = db.VGAs.FirstOrDefault(x => x.Id.ToString() == id);
                            VGA.Quantity += details.Quantity;
                            break;
                    }
                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { } return false;
        }
    }
}
