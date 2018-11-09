using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Keyboard;

namespace TakaZada.Areas.Admin.Controllers
{
    public class KeyboardController : Controller
    {
        private readonly IKeyboardLoad _LoadService;
        public KeyboardController(IKeyboardLoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/Keyboard
        public ActionResult Index()
        {
            ViewBag.Keyboards = _LoadService.Load();
            return View();
        }
    }
}