using System;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Hardware;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class HardwareController : Controller
    {
        private readonly ILoadHardware _LoadService;
        private readonly IHardwareReponsitiry _HardwareService;
        public HardwareController(ILoadHardware LoadService, IHardwareReponsitiry HardwareService)
        {
            _LoadService = LoadService;
            _HardwareService = HardwareService;
        }
        // GET: Admin/Hardware
        public ActionResult Index()
        {
            ViewBag.Hardwares = _LoadService.Load();
            return View();
        }

        public ActionResult Delete(int Id)
        {
            _HardwareService.DeleteHardware(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _HardwareService.RestoreHardware(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedHardware = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            var hardware = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));

            #region get properties
            try { hardware.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { hardware.Description = Request.Form["Description"]; } catch (Exception e) { }
            try { hardware.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
            try { hardware.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { hardware.Memory = Request.Form["Memory"]; } catch (Exception e) { }
            try { hardware.Label = Request.Form["Label"]; } catch (Exception e) { }
            try { hardware.ReadSpeed = Request.Form["ReadSpeed"]; } catch (Exception e) { }
            try { hardware.WriteSpeed = Request.Form["WriteSpeed"]; } catch (Exception e) { }
            try { hardware.Size = Request.Form["Size"]; } catch (Exception e) { }
            try { hardware.Price = Request.Form["Price"]; } catch (Exception e) { }
            #endregion

            if (_HardwareService.UpdateHardware(hardware))
            {
                Session["submit_message"] =
                                           "<p class='font-green-sharp' style='font-size: 20px;color: #009614!important;font-weight: bold;'>Update hardware successful</p>";
                return RedirectToAction("Update", new { Id = hardware.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update hardware failed</p>";
            }
            return RedirectToAction("Update", new { Id = hardware.Id });
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
            // upload image of computer
            string filename = Request.Form["Image"];
            string src = Request.Form["src"];
            if (UploadFileService.UploadFileToServerBase64(filename, Constants.HARDWARE_PATH, src))
            {
                var hardware = _HardwareService.CreateHardware();

                #region get properties
                try { hardware.Name = Request.Form["Name"]; } catch (Exception e) { }
                try { hardware.Description = Request.Form["Description"]; } catch (Exception e) { }
                try { hardware.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                try { hardware.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { hardware.Memory = Request.Form["Memory"]; } catch (Exception e) { }
                try { hardware.Label = Request.Form["Label"]; } catch (Exception e) { }
                try { hardware.ReadSpeed = Request.Form["ReadSpeed"]; } catch (Exception e) { }
                try { hardware.WriteSpeed = Request.Form["WriteSpeed"]; } catch (Exception e) { }
                try { hardware.Size = Request.Form["Size"]; } catch (Exception e) { }
                try { hardware.Price = Request.Form["Price"]; } catch (Exception e) { }
                hardware.Image = filename;
                hardware.IsDeleted = false;
                #endregion
                if ( _HardwareService.InsertHardware(hardware))
                {
                    return RedirectToAction("Index");
                }
            }
            return View();
        }
        public ActionResult Remove(int Id)
        {
            _HardwareService.DeleteHardwareFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}