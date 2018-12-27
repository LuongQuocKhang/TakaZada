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
                    int id = Int32.Parse(details.ItemId);

                    var item = db.CartDetails.FirstOrDefault(x => x.ItemId == id.ToString() && x.type == details.type && x.CartId == cartid);
                    if (item == null)
                    {
                        var cart = db.Carts.FirstOrDefault(x => x.CartId == cartid);
                        db.CartDetails.Add(details);
                    }
                    else
                    {
                        var update = db.CartDetails.FirstOrDefault(x => x.ItemId == id.ToString() && x.type == details.type && x.CartId == cartid);
                        update.Quantity += details.Quantity;
                    }
                    switch (details.type)
                    {
                        case "Case":
                            var Case = db.Cases.FirstOrDefault(x => x.Id == id);
                            if (Case.Quantity - details.Quantity < 0 ) return false;
                            Case.Quantity -= details.Quantity;
                            break;
                        case "Computer":
                            var Computer = db.Computers.FirstOrDefault(x => x.Id == id);
                            if (Computer.Quantity - details.Quantity < 0) return false;
                            Computer.Quantity -= details.Quantity;
                            break;
                        case "CPU":
                            var CPU = db.CPUs.FirstOrDefault(x => x.Id == id);
                            if (CPU.Quantity - details.Quantity < 0) return false;
                            CPU.Quantity -= details.Quantity;
                            break;
                        case "Hardware":
                            var Hardware = db.Hardwares.FirstOrDefault(x => x.Id == id);
                            if (Hardware.Quantity - details.Quantity < 0) return false;
                            Hardware.Quantity -= details.Quantity;
                            break;
                        case "Keyboard":
                            var Keyboard = db.Keyboards.FirstOrDefault(x => x.Id == id);
                            if (Keyboard.Quantity - details.Quantity < 0) return false;
                            Keyboard.Quantity -= details.Quantity;
                            break;
                        case "Mainboard":
                            var Mainboard = db.MainBoards.FirstOrDefault(x => x.Id == id);
                            if (Mainboard.Quantity - details.Quantity < 0) return false;
                            Mainboard.Quantity -= details.Quantity;
                            break;
                        case "Radiator":
                            var Radiator = db.Radiators.FirstOrDefault(x => x.Id == id);
                            if (Radiator.Quantity - details.Quantity < 0) return false;
                            Radiator.Quantity -= details.Quantity;
                            break;
                        case "RAM":
                            var RAM = db.RAMs.FirstOrDefault(x => x.Id == id);
                            if (RAM.Quantity - details.Quantity < 0) return false;
                            RAM.Quantity -= details.Quantity;
                            break;
                        case "VGA":
                            var VGA = db.VGAs.FirstOrDefault(x => x.Id == id);
                            if (VGA.Quantity - details.Quantity < 0) return false;
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
        public bool DecreaseQuantity(int detailsiD)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var details = db.CartDetails.FirstOrDefault(x => x.ID == detailsiD);
                    string id = details.ItemId.ToString();

                    if (details.Quantity - 1 > 0)
                    {
                        details.Quantity -= 1;
                    }
                    switch (details.type)
                    {
                        case "Case":
                            var Case = db.Cases.FirstOrDefault(x => x.Id.ToString() == id);
                            Case.Quantity += 1;
                            break;
                        case "Computer":
                            var Computer = db.Computers.FirstOrDefault(x => x.Id.ToString() == id);
                            Computer.Quantity += 1;
                            break;
                        case "CPU":
                            var CPU = db.CPUs.FirstOrDefault(x => x.Id.ToString() == id);
                            CPU.Quantity += 1;
                            break;
                        case "Hardware":
                            var Hardware = db.Hardwares.FirstOrDefault(x => x.Id.ToString() == id);
                            Hardware.Quantity += 1;
                            break;
                        case "Keyboard":
                            var Keyboard = db.Keyboards.FirstOrDefault(x => x.Id.ToString() == id);
                            Keyboard.Quantity += 1;
                            break;
                        case "Mainboard":
                            var Mainboard = db.MainBoards.FirstOrDefault(x => x.Id.ToString() == id);
                            Mainboard.Quantity += 1;
                            break;
                        case "Radiator":
                            var Radiator = db.Radiators.FirstOrDefault(x => x.Id.ToString() == id);
                            Radiator.Quantity += 1;
                            break;
                        case "RAM":
                            var RAM = db.RAMs.FirstOrDefault(x => x.Id.ToString() == id);
                            RAM.Quantity += 1;
                            break;
                        case "VGA":
                            var VGA = db.VGAs.FirstOrDefault(x => x.Id.ToString() == id);
                            VGA.Quantity += 1;
                            break;
                    }
                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }
        public bool IncreaseQuantity(int detailsiD)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var details = db.CartDetails.FirstOrDefault(x => x.ID == detailsiD);
                    int cartid = details.CartId;
                    int id = Int32.Parse(details.ItemId);

                    var update = db.CartDetails.FirstOrDefault(x => x.ItemId == id.ToString() && x.type == details.type && x.CartId == cartid);
                    update.Quantity += 1;

                    switch (details.type)
                    {
                        case "Case":
                            var Case = db.Cases.FirstOrDefault(x => x.Id == id);
                            if (Case.Quantity == 0) return false;
                            Case.Quantity -= 1;
                            break;
                        case "Computer":
                            var Computer = db.Computers.FirstOrDefault(x => x.Id == id);
                            if (Computer.Quantity == 0) return false;
                            Computer.Quantity -= 1;
                            break;
                        case "CPU":
                            var CPU = db.CPUs.FirstOrDefault(x => x.Id == id);
                            if (CPU.Quantity == 0) return false;
                            CPU.Quantity -= 1;
                            break;
                        case "Hardware":
                            var Hardware = db.Hardwares.FirstOrDefault(x => x.Id == id);
                            if (Hardware.Quantity == 0) return false;
                            Hardware.Quantity -= 1;
                            break;
                        case "Keyboard":
                            var Keyboard = db.Keyboards.FirstOrDefault(x => x.Id == id);
                            if (Keyboard.Quantity == 0) return false;
                            Keyboard.Quantity -= 1;
                            break;
                        case "Mainboard":
                            var Mainboard = db.MainBoards.FirstOrDefault(x => x.Id == id);
                            if (Mainboard.Quantity == 0) return false;
                            Mainboard.Quantity -= 1;
                            break;
                        case "Radiator":
                            var Radiator = db.Radiators.FirstOrDefault(x => x.Id == id);
                            if (Radiator.Quantity == 0) return false;
                            Radiator.Quantity -= 1;
                            break;
                        case "RAM":
                            var RAM = db.RAMs.FirstOrDefault(x => x.Id == id);
                            if (RAM.Quantity == 0) return false;
                            RAM.Quantity -= 1;
                            break;
                        case "VGA":
                            var VGA = db.VGAs.FirstOrDefault(x => x.Id == id);
                            if (VGA.Quantity == 0) return false;
                            VGA.Quantity -= 1;
                            break;
                    }

                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }
    }
}
