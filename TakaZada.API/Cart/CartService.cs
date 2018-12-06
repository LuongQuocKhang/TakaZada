﻿using System;
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
                    string id = details.ItemId.ToString();
                    var item = db.CartDetails.FirstOrDefault(x => x.ItemId == id);
                    if (item == null)
                    {
                        db.CartDetails.Add(details);
                    }
                    else
                    {
                        var update = db.CartDetails.FirstOrDefault(x => x.ItemId == id && x.type == details.type);
                        update.Quantity += details.Quantity;
                    }
                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public CartDetails CreateCartDetails(string type, int CartId, string ItemId, int Quantity, string price)
        {
            return new CartDetails() { type = type, CartId = CartId, ItemId = ItemId, Quantity = Quantity, price = price };
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

        public CartDetails LoadCartDetails(int Id)
        {
            Core.Models.CartDetails CartDetails = null;
            using (var db = new DBContext())
            {
                CartDetails = db.CartDetails.FirstOrDefault(x => x.CartId == Id);
            }
            return CartDetails;
        }
        
    }
}