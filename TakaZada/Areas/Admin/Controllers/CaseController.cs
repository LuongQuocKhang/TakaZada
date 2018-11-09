using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Case;

namespace TakaZada.Areas.Admin.Controllers
{
    public class CaseController : Controller
    {
        private readonly ILoadCase _LoadService;
        public CaseController(ILoadCase LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/Case
        public ActionResult Index()
        {
            ViewBag.Cases = _LoadService.Load();
            return View();
        }
    }
}