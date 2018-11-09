using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.VGA;

namespace TakaZada.Areas.Admin.Controllers
{
    public class VGAController : Controller
    {
        private readonly IVGALoad _LoadService;
        public VGAController(IVGALoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/VGA
        public ActionResult Index()
        {
            ViewBag.VGAs = _LoadService.Load();
            return View();
        }
    }
}