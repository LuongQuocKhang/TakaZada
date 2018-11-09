using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.RAM;

namespace TakaZada.Areas.Admin.Controllers
{
    public class RAMController : Controller
    {
        private readonly IRAMLoad _LoadService;
        public RAMController(IRAMLoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/RAM
        public ActionResult Index()
        {
            ViewBag.RAMs = _LoadService.Load();
            return View();
        }
    }
}