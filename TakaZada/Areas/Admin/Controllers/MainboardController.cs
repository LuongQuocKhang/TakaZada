using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Mainboard;
using TakaZada.Core.Models;

namespace TakaZada.Areas.Admin.Controllers
{
    public class MainboardController : Controller
    {
        private readonly IMainboardLoad _LoadService;
        public MainboardController(IMainboardLoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/Mainboard
        public ActionResult Index()
        {
            ViewBag.Mainboards = _LoadService.Load();
            return View();
        }
    }
}