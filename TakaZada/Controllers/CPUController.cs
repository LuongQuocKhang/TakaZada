using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.CPU;

namespace TakaZada.Controllers
{
    public class CPUController : Controller
    {
        // GET: CPU
        private readonly ILoadCPU _LoadService;
        public CPUController(ILoadCPU LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name , string filter)
        {
            if (filter == "Name")
            {
                ViewBag.ListCPU = _LoadService.LoadByName(Name);
            }
            else if (filter == "Trademark")
            {
                ViewBag.ListCPU = _LoadService.LoadByTradeMark(Name);
            }
            return View();
        }
    }
}