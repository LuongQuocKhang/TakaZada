using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.RAM;

namespace TakaZada.Areas.Admin.Controllers
{
    public class RAMController : Controller
    {
        private readonly IRAMLoad _LoadService;
        private readonly IRAMRepository _RAMService;
        public RAMController(IRAMLoad LoadService, IRAMRepository RAMService)
        {
            _LoadService = LoadService;
            _RAMService = RAMService;
        }
        // GET: Admin/RAM
        public ActionResult Index()
        {
            ViewBag.RAMs = _LoadService.Load();
            return View();
        }

        public ActionResult Delete(int Id)
        {
            _RAMService.DeleteRAM(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Remove(int Id)
        {
            _RAMService.DeleteRAMFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _RAMService.RestoreRAM(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedRAM = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post(int Id)
        {
            _RAMService.RestoreRAM(Id);
            return RedirectToAction("Index");
        }
    }
}