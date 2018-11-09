using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.CPU;

namespace TakaZada.Areas.Admin.Controllers
{
    public class CPUController : Controller
    {
        private readonly ILoadCPU _LoadService;
        public CPUController(ILoadCPU LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/CPU
        public ActionResult Index()
        {
            ViewBag.CPUs = _LoadService.Load();
            return View();
        }
    }
}