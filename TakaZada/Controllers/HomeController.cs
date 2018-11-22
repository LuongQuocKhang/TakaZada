using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Computer;
using TakaZada.API.VGA;

namespace TakaZada.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILoad _LoadService;
        private readonly IVGALoad _LoadVGA;
        public HomeController(ILoad load, IVGALoad LoadVGA)
        {
            _LoadService = load;
            _LoadVGA = LoadVGA;
        }
        public ActionResult Index()
        {
            ViewBag.ListComputer = _LoadService.Load();
            ViewBag.ListVGA = _LoadVGA.Load();
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
    }
}