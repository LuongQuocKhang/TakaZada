using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Cart
{
    public interface ILoadCart
    {
        TakaZada.Core.Models.Cart LoadCartByEmail(string Email);
        TakaZada.Core.Models.CartDetails LoadCartDetails(int Id);
    } 
}
