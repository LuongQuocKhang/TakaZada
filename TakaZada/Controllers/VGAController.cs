using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.VGA;

namespace TakaZada.Controllers
{
    public class VGAController : Controller
    {
        // GET: VGA
        private readonly IVGALoad _LoadService;
        public VGAController(IVGALoad LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListVGA = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var VGA = _LoadService.LoadById(Id);
                ViewBag.SelectedVGA = VGA;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(VGA.TradeMark).Where(x => x.Id != VGA.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}