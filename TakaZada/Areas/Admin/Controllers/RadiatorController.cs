using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Radiator;

namespace TakaZada.Areas.Admin.Controllers
{
    public class RadiatorController : Controller
    {
        private readonly IRadiatorLoad _LoadService;
        public RadiatorController(IRadiatorLoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/Radiator
        public ActionResult Index()
        {
            ViewBag.Radiators = _LoadService.Load();
            return View();
        }
    }
}