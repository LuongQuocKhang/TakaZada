using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Cart;
using TakaZada.API.Handle;
using TakaZada.Core;

namespace TakaZada.Controllers
{
    public class CartController : Controller
    {
        private readonly IUser _UserService;
        private readonly ILoadCart _LoadCartService;
        private readonly ICartRepository _CartService;

        public CartController(IUser UserService, ILoadCart LoadCartService, ICartRepository CartService)
        {
            _UserService = UserService;
            _LoadCartService = LoadCartService;
            _CartService = CartService;
        }
        // GET: Cart
        public ActionResult Index()
        {
            var User = _UserService.GetCurrentUser();
            if (User != null)
            {
                var cart = _LoadCartService.LoadCartByEmail(User.UserName);
                ViewBag.Cart = cart;
                ViewBag.CartDetails = _LoadCartService.LoadCartDetails(cart.CartId);
                return View();
            }
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        [ActionName("AddToCart")]
        public ActionResult AddToCart(string type, string ItemId, int Quantity, string price, int Id, string Name, string Image, string Index = null)
        {
            var user = (UserLogin)Session[Constants.USER_SESSION];
            if (user != null)
            {
                int CartId = _LoadCartService.LoadCartByEmail(user.UserName).CartId;
                var cartdetail = _CartService.CreateCartDetails(type, CartId, ItemId, Quantity, price, Name, Image);
                _CartService.AddToCart(cartdetail);
            }
            return RedirectToAction("Details", type, new { Id = Id });
        }
        [HttpPost, ValidateInput(false)]
        [ActionName("AddToCart")]
        public ActionResult AddToCart_Post()
        {
            try
            {
                var user = (UserLogin)Session[Constants.USER_SESSION];
                string type = Request.Form["type"], ItemId = Request.Form["ItemId"], price = Request.Form["price"];
                string Quantity = Request.Form["Quantity"];
                string Name = Request.Form["Name"], Image = Request.Form["Image"];

                int Id = Int32.Parse(Request.Form["Id"]);

                if (user != null)
                {
                    int CartId = _LoadCartService.LoadCartByEmail(user.UserName).CartId;
                    var cartdetail = _CartService.CreateCartDetails(type, CartId, ItemId, Int32.Parse(Quantity), price, Name, Image);
                    _CartService.AddToCart(cartdetail);
                    return Json(new { result = true }, JsonRequestBehavior.AllowGet);
                }

            }
            catch (Exception e) { }
            return Json(new { result = false }, JsonRequestBehavior.AllowGet);
        }
    }
}