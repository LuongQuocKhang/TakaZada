using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using TakaZada.API.Computer;

namespace TakaZada.Areas.Admin.Controllers
{
    public class ComputerController : Controller
    {
        private readonly ILoad _LoadService;
        public ComputerController(ILoad load)
        {
            _LoadService = load;
        }
        // GET: Admin/Computer
        public ActionResult Index()
        {
            ViewBag.Computers = _LoadService.Load();
            return View();
        }
    }
}