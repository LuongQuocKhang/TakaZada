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
        private readonly IKeyboardLoad _loadService;
        public KeyboardController(IKeyboardLoad loadService)
        {
            _loadService = loadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListKeyboard = _loadService.LoadByTradeMark(Name);
            return View();
        }
    }
}