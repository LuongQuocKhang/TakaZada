using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Case;

namespace TakaZada.Controllers
{
    public class CaseController : Controller
    {
        // GET: Case
        private readonly ILoadCase _LoadService;
        public CaseController(ILoadCase LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListCase = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var Case = _LoadService.LoadById(Id);
                ViewBag.SelectedCase = Case;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(Case.TradeMark).Where(x => x.Id != Case.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}