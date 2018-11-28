using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Case;
using TakaZada.API.Computer;
using TakaZada.API.CPU;
using TakaZada.API.RAM;
using TakaZada.API.VGA;

namespace TakaZada.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILoad _LoadComputer;
        private readonly IVGALoad _LoadVGA;
        private readonly IRAMLoad _LoadRAM;
        private readonly ILoadCPU _LoadCPU;
        private readonly ILoadCase _LoadCase;

        public HomeController(ILoad load, IVGALoad LoadVGA, IRAMLoad LoadRAM, ILoadCPU LoadCPU, ILoadCase LoadCase)
        {
            _LoadComputer = load;
            _LoadVGA = LoadVGA;
            _LoadRAM = LoadRAM;
            _LoadCPU = LoadCPU;
            _LoadCase = LoadCase;
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
    }
}