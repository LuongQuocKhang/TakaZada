using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TakaZada.Controllers
{
    public class MainBoardController : Controller
    {
        // GET: MainBoard
        public ActionResult Index()
        {
            return View();
        }
    }
}