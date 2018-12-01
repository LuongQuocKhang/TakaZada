using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Mainboard;

namespace TakaZada.Controllers
{
    public class MainBoardController : Controller
    {
        // GET: MainBoard
        private readonly IMainboardLoad _LoadService;
        public MainBoardController(IMainboardLoad LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListMainboard = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var Mainboard = _LoadService.LoadById(Id);
                ViewBag.SelectedMainboard = Mainboard;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(Mainboard.TradeMark).Where(x => x.Id != Mainboard.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}