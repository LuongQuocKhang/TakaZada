using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Cart
{
    public interface ICartRepository
    {
        bool AddToCart(CartDetails details);
        bool RemoveCartDetail(int detailsId);
        CartDetails CreateCartDetails(string type , int CartId , string ItemId , int Quantity , string price,string Name , string Image);

        bool DecreaseQuantity(int detailsiD);
        bool IncreaseQuantity(int detailsiD);
    }
}
