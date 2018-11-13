using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Mainboard;
using TakaZada.Core;
using TakaZada.Core.Models;

namespace TakaZada.Areas.Admin.Controllers
{
    public class MainboardController : Controller
    {
        private readonly IMainboardLoad _LoadService;
        private readonly IMainboardReponsitory _MainboardService;
        public MainboardController(IMainboardLoad LoadService, IMainboardReponsitory MainboardService)
        {
            _LoadService = LoadService;
            _MainboardService = MainboardService;
        }
        // GET: Admin/Mainboard
        public ActionResult Index()
        {
            ViewBag.Mainboards = _LoadService.Load();
            return View();
        }

        public ActionResult Delete(int Id)
        {
            _MainboardService.DeleteMainboard(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _MainboardService.RestoreMainboard(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedMainboard = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            var mainboard = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));

            try { mainboard.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { mainboard.Description = Request.Form["Description"]; } catch (Exception e) { }
            try { mainboard.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { mainboard.Type = Request.Form["Type"]; } catch (Exception e) { }
            try { mainboard.Model = Request.Form["Model"]; } catch (Exception e) { }
            try { mainboard.Chipset = Request.Form["Chipset"]; } catch (Exception e) { }
            try { mainboard.MaxRamMemory = Request.Form["MaxRamMemory"]; } catch (Exception e) { }
            try { mainboard.RamType = Request.Form["RamType"]; } catch (Exception e) { }
            try { mainboard.HDMINum = Request.Form["HDMINum"]; } catch (Exception e) { }
            try { mainboard.Price = Request.Form["Price"]; } catch (Exception e) { }
            try { mainboard.RamNum = Int32.Parse(Request.Form["RamNum"]); } catch (Exception e) { }
            try { mainboard.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }

            if ( _MainboardService.UpdateMainboard(mainboard))
            {
                Session["submit_message"] =
                                            "<p class='font-green-sharp' style='font-size: 20px;color: #009614!important;font-weight: bold;'>Update mainboard successful</p>";
                return RedirectToAction("Update", new { Id = mainboard.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update mainboard failed</p>";
            }
            return RedirectToAction("Update", new
            {
                Id = mainboard.Id
            });
        }

        [ActionName("Add")]
        [HttpGet]
        public ActionResult Add()
        {
            return View();
        }
        [ActionName("Add")]
        [HttpPost]
        public ActionResult Add_Post()
        {
            string filename = Request.Form["Image"];
            string src = Request.Form["src"];
            if (UploadFileService.UploadFileToServerBase64(filename, Constants.MAINBOARD_PATH, src))
            {
                var mainboard = _MainboardService.CreateMainboard();

                try { mainboard.Name = Request.Form["Name"]; } catch (Exception e) { }
                try { mainboard.Description = Request.Form["Description"]; } catch (Exception e) { }
                try { mainboard.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { mainboard.Type = Request.Form["Type"]; } catch (Exception e) { }
                try { mainboard.Model = Request.Form["Model"]; } catch (Exception e) { }
                try { mainboard.Chipset = Request.Form["Chipset"]; } catch (Exception e) { }
                try { mainboard.MaxRamMemory = Request.Form["MaxRamMemory"]; } catch (Exception e) { }
                try { mainboard.RamType = Request.Form["RamType"]; } catch (Exception e) { }
                try { mainboard.HDMINum = Request.Form["HDMINum"]; } catch (Exception e) { }
                try { mainboard.Price = Request.Form["Price"]; } catch (Exception e) { }
                try { mainboard.RamNum = Int32.Parse(Request.Form["RamNum"]); } catch (Exception e) { }
                try { mainboard.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                mainboard.IsDeleted = false;
                mainboard.Image = filename;
                if (_MainboardService.InsertMainboard(mainboard))
                {
                    Session["submit_message"] = null;
                    return RedirectToAction("Index");
                }
                else
                {
                    Session["submit_message"] =
            "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Add keyboard failed</p>";
                    return View();
                }
            }
            else
            {
                Session["submit_message"] =
                 "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Add keyboard failed</p>";
                return View();
            }
        }

        public ActionResult Remove(int Id)
        {
            _MainboardService.DeleteMainboardFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}