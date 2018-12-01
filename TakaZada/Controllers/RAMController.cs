using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.RAM;

namespace TakaZada.Controllers
{
    public class RAMController : Controller
    {
        // GET: RAM
        private readonly IRAMLoad _LoadService;
        public RAMController(IRAMLoad LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListRAM = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var RAM = _LoadService.LoadById(Id);
                ViewBag.SelectedRAM = RAM;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(RAM.TradeMark).Where(x => x.Id != RAM.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}