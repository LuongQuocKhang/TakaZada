using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Keyboard;

namespace TakaZada.Controllers
{
    public class KeyboardController : Controller
    {
        // GET: Keyboard
        private readonly IKeyboardLoad _LoadService;
        public KeyboardController(IKeyboardLoad loadService)
        {
            _LoadService = loadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListKeyboard = _LoadService.LoadByTradeMark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var Keyboard = _LoadService.LoadById(Id);
                ViewBag.SelectedKeyboard = Keyboard;
                ViewBag.TheSameTrademark = _LoadService.LoadByTradeMark(Keyboard.TradeMark).Where(x => x.Id != Keyboard.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}