﻿using System;
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
using System.Globalization;
using TakaZada.API.Search;

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
        private readonly ISearchQuerry _SearchService;
        public HomeController(ILoad load, IVGALoad LoadVGA, IRAMLoad LoadRAM, ILoadCPU LoadCPU, ILoadCase LoadCase, ILog LogService , IUser UserService
            , ILoadCart LoadCartService, ICartRepository CartService, ISearchQuerry SearchService)
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
            _SearchService = SearchService;
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
        public ActionResult register()
        {
            string FirstName = Request.Form["FirstName"], LastName = Request.Form["FirstName"],
                   Password = Request.Form["PasswordPes"], ComfirmPas = Request.Form["ComfirmPassword"],
                   Email = Request.Form["EmailRes"],
                   Phonenumber = Request.Form["Phonenumber"], Sex = Request.Form["Sex"], DateOfBirth = Request.Form["DateOfBirth"],
                   Address = Request.Form["Address"];
            DateTime time = DateTime.Now;
            if (Password != ComfirmPas) RedirectToAction("Index");
            try
            {
                time = DateTime.ParseExact(DateOfBirth + " 00:00:00", "dd/MM/yyyy HH:mm:ss", CultureInfo.InvariantCulture);
            }
            catch (Exception e) { }

            if ( _LogService.register(FirstName, LastName,Email, Password, Phonenumber,Sex,time, Address))
            {
                return RedirectToAction("Index");
            }
            return RedirectToAction("Index");
        }
        public ActionResult Search()
        {
            string type = Request.Form["SearchCondition"],
                   nameContain = Request.Form["SearchResult"];

            ViewBag.SearchList = _SearchService.Search(type,nameContain);
            return View();
        }
    }
}