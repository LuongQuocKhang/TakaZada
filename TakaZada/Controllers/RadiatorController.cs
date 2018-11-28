using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Radiator;

namespace TakaZada.Controllers
{
    public class RadiatorController : Controller
    {
        // GET: Radiator
        private readonly IRadiatorLoad _loadService;
        public RadiatorController(IRadiatorLoad loadService)
        {
            _loadService = loadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListRadiator = _loadService.LoadByTrademark(Name);
            return View();
        }
    }
}