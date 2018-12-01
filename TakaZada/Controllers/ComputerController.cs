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
        private readonly IComputerReponsitory _ConputerService;

        public ComputerController(ILoad LoadService, IComputerReponsitory ConputerService)
        {
            _LoadService = LoadService;
            _ConputerService = ConputerService;
        }
        // GET: Computer
        public ActionResult Index(string Trademark)
        {
            ViewBag.ListComputer = _LoadService.LoadByTradeMark(Trademark);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var computer = _LoadService.LoadById(Id);
                ViewBag.SelectedComputer = computer;
                ViewBag.TheSameTrademark = _LoadService.LoadByTradeMark(computer.Trademark).Where(x => x.Id != computer.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}