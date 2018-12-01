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
        private readonly IRadiatorLoad _LoadService;
        public RadiatorController(IRadiatorLoad loadService)
        {
            _LoadService = loadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListRadiator = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var Radiator = _LoadService.LoadById(Id);
                ViewBag.SelectedRadiator = Radiator;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(Radiator.TradeMark).Where(x => x.Id != Radiator.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}