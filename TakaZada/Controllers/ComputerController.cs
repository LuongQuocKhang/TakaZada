using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Computer;

namespace TakaZada.Controllers
{
    public class ComputerController : Controller
    {
        private readonly ILoad _LoadService;

        public ComputerController(ILoad LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Computer
        public ActionResult Index(string Trademark)
        {
            ViewBag.ListComputer = _LoadService.LoadByTradeMark(Trademark);
            return View();
        }
    }
}