using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Admin;
using TakaZada.API.Cart;
using TakaZada.API.Case;
using TakaZada.API.Computer;
using TakaZada.API.CPU;
using TakaZada.API.Handle;
using TakaZada.API.RAM;
using TakaZada.API.VGA;
using TakaZada.Core;

namespace TakaZada.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILoad _LoadComputer;
        private readonly IVGALoad _LoadVGA;
        private readonly IRAMLoad _LoadRAM;
        private readonly ILoadCPU _LoadCPU;
        private readonly ILoadCase _LoadCase;
        private readonly ILog _LogService;
        private readonly IUser _UserService;
        private readonly ILoadCart _LoadCartService;
        private readonly ICartRepository _CartService;

        public HomeController(ILoad load, IVGALoad LoadVGA, IRAMLoad LoadRAM, ILoadCPU LoadCPU, ILoadCase LoadCase, ILog LogService , IUser UserService
            , ILoadCart LoadCartService, ICartRepository CartService)
        {
            _LoadComputer = load;
            _LoadVGA = LoadVGA;
            _LoadRAM = LoadRAM;
            _LoadCPU = LoadCPU;
            _LoadCase = LoadCase;
            _LogService = LogService;
            _UserService = UserService;
            _LoadCartService = LoadCartService;
            _CartService = CartService;
        }

        public ActionResult Index()
        {
            ViewBag.ListComputer = _LoadComputer.Load();
            ViewBag.ListVGA = _LoadVGA.Load();
            ViewBag.ListRAM = _LoadRAM.Load();
            ViewBag.ListCPU = _LoadCPU.Load();
            ViewBag.ListCase = _LoadCase.Load();

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpPost]
        public ActionResult Login()
        {
            string Email = Request.Form["Email"],
                   Password = Request.Form["Password"];
            if ( _LogService.LogIn(Email,Password) == true)
            {
                var User = _UserService.GetUserByEmail(Email);
                Session[Constants.USER_SESSION] = User;
                return RedirectToAction("Index");
            }
            return RedirectToAction("Index");
        }
        public ActionResult Logout()
        {
            Session[Constants.USER_SESSION] = null;
            return RedirectToAction("Index");
        }

        public ActionResult Cart()
        {
            if (_UserService.GetCurrentUser() != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index");
            }
        }
        [HttpGet]
        [ActionName("AddToCart")]
        public ActionResult AddToCart(string type, string ItemId, int Quantity, string price, int Id)
        {
            var user = (UserLogin)Session[Constants.USER_SESSION];
            if (user != null)
            {
                int CartId = _LoadCartService.LoadCartByEmail(user.UserName).CartId;
                var cartdetail = _CartService.CreateCartDetails(type, CartId, ItemId, Quantity, price);
                _CartService.AddToCart(cartdetail);
            }
            return RedirectToAction("Details",type, new { Id = Id });

        }
        [HttpPost]
        [ActionName("AddToCart")]
        public ActionResult AddToCart_Post()
        {
            try
            {
                var user = (UserLogin)Session[Constants.USER_SESSION];
                string type = Request.Form["type"], ItemId = Request.Form["ItemId"], price = Request.Form["price"];
                string Quantity = Request.Form["Quantity"];
                int Id = Int32.Parse(Request.Form["Id"]);

                if (user != null)
                {

                    int CartId = _LoadCartService.LoadCartByEmail(user.UserName).CartId;
                    var cartdetail = _CartService.CreateCartDetails(type, CartId, ItemId, Int32.Parse(Quantity), price);
                    _CartService.AddToCart(cartdetail);
                    return Json(new { result = true }, JsonRequestBehavior.AllowGet);
                }
                
            }
            catch (Exception e) { }
            return Json(new { result = false }, JsonRequestBehavior.AllowGet);
        }
    }
}