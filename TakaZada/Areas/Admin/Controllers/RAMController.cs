using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.RAM;
using TakaZada.Core;

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
            var ram = _LoadService.LoadById(Id);
            try
            {
                #region get properties
                try { ram.Name = Request.Form["Name"]; } catch (Exception e) { }
                try { ram.Description = Request.Form["Description"]; } catch (Exception e) { }
                try { ram.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { ram.Color = Request.Form["Color"]; } catch (Exception e) { }
                try { ram.RamType = Request.Form["RamType"]; } catch (Exception e) { }
                try { ram.Memory = Request.Form["Memory"]; } catch (Exception e) { }
                try { ram.BusSpeed = Request.Form["BusSpeed"]; } catch (Exception e) { }
                try { ram.Price = Request.Form["Price"]; } catch (Exception e) { }
                try { ram.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                #endregion

                if (_RAMService.UpdateRAM(ram))
                {
                    Session["submit_message"] =
                            "<p class='font-green-sharp' style='font-size: 20px;color: #000000!important;font-weight: bold;'>Update ram successful</p>";
                }
                else
                {
                    Session["submit_message"] =
                            "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update ram failed</p>";
                }
                return RedirectToAction("Update", new { Id = ram.Id });

            }
            catch (Exception e) { }
            return RedirectToAction("Update", new { Id = ram.Id });
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
            try
            {
                // upload image of computer
                string filename = Request.Form["Image"];
                string src = Request.Form["src"];
                if (UploadFileService.UploadFileToServerBase64(filename, Constants.RAM_PATH, src))
                {
                    var ram = _RAMService.CreateRAM();
                    #region get properties
                    try { ram.Name = Request.Form["Name"]; } catch (Exception e) { }
                    try { ram.Description = Request.Form["Description"]; } catch (Exception e) { }
                    try { ram.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                    try { ram.Color = Request.Form["Color"]; } catch (Exception e) { }
                    try { ram.RamType = Request.Form["RamType"]; } catch (Exception e) { }
                    try { ram.Memory = Request.Form["Memory"]; } catch (Exception e) { }
                    try { ram.BusSpeed = Request.Form["BusSpeed"]; } catch (Exception e) { }
                    try { ram.Price = Request.Form["Price"]; } catch (Exception e) { }
                    try { ram.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                    ram.Image = filename;
                    ram.IsDeleted = false;
                    #endregion

                    if (_RAMService.InsertRAM(ram))
                    {
                        return RedirectToAction("Index");
                    }
                    else return View();
                }
                else
                    return View();
            }
            catch (Exception e) { }
            return View();
        }
    }
}