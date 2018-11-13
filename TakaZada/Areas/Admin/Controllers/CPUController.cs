using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.CPU;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class CPUController : Controller
    {
        private readonly ILoadCPU _LoadService;
        private readonly ICPUReponsitory _CPUService;

        public CPUController(ILoadCPU LoadService, ICPUReponsitory CPUService)
        {
            _LoadService = LoadService;
            _CPUService = CPUService;
        }
        // GET: Admin/CPU
        public ActionResult Index()
        {
            ViewBag.CPUs = _LoadService.Load();
            return View();
        }
        public ActionResult Delete(int Id)
        {
            _CPUService.DeleteCPU(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _CPUService.RestoreCPU(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedCPU = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            var cpu = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));

            #region get properties
            try { cpu.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { cpu.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
            try { cpu.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { cpu.CPUType = Request.Form["CPUType"]; } catch (Exception e) { }
            try { cpu.CPULine = Request.Form["CPULine"]; } catch (Exception e) { }
            try { cpu.CoreNum = Int32.Parse( Request.Form["CoreNum"]); } catch (Exception e) { }
            try { cpu.ThreadNum = Int32.Parse( Request.Form["ThreadNum"]); } catch (Exception e) { }
            try { cpu.CoreCPU = Request.Form["CoreCPU"]; } catch (Exception e) { }
            try { cpu.BasicPulse = Request.Form["BasicPulse"]; } catch (Exception e) { }
            try { cpu.MaxPulse = Request.Form["MaxPulse"]; } catch (Exception e) { }
            try { cpu.CacheCPU = Request.Form["CacheCPU"]; } catch (Exception e) { }
            try { cpu.Size = Request.Form["Size"]; } catch (Exception e) { }
            try { cpu.Description = Request.Form["Description"]; } catch (Exception e) { }
            try { cpu.Price = Request.Form["Price"]; } catch (Exception e) { }
            #endregion
            if ( _CPUService.UpdateCPU(cpu))
            {
                Session["submit_message"] =
                                           "<p class='font-green-sharp' style='font-size: 20px;color: #009614!important;font-weight: bold;'>Update cpu successful</p>";
                return RedirectToAction("Update", new { Id = cpu.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update cpu failed</p>";
            }
            return RedirectToAction("Update", new { Id = cpu.Id });        
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

            try
            {
                if (UploadFileService.UploadFileToServerBase64(filename, Constants.CPU_PATH, src))
                {
                    var cpu = _CPUService.CreateCPU();
                    #region get properties
                    try { cpu.Name = Request.Form["Name"]; } catch (Exception e) { }
                    try { cpu.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                    try { cpu.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                    try { cpu.CPUType = Request.Form["CPUType"]; } catch (Exception e) { }
                    try { cpu.CPULine = Request.Form["CPULine"]; } catch (Exception e) { }
                    try { cpu.CoreNum = Int32.Parse(Request.Form["CoreNum"]); } catch (Exception e) { }
                    try { cpu.ThreadNum = Int32.Parse(Request.Form["ThreadNum"]); } catch (Exception e) { }
                    try { cpu.CoreCPU = Request.Form["CoreCPU"]; } catch (Exception e) { }
                    try { cpu.BasicPulse = Request.Form["BasicPulse"]; } catch (Exception e) { }
                    try { cpu.MaxPulse = Request.Form["MaxPulse"]; } catch (Exception e) { }
                    try { cpu.CacheCPU = Request.Form["CacheCPU"]; } catch (Exception e) { }
                    try { cpu.Size = Request.Form["Size"]; } catch (Exception e) { }
                    try { cpu.Description = Request.Form["Description"]; } catch (Exception e) { }
                    try { cpu.Price = Request.Form["Price"]; } catch (Exception e) { }
                    try { cpu.IsDeleted = false; } catch (Exception e) { }
                    cpu.Image = filename;
                    #endregion

                    if (_CPUService.InsertCPU(cpu))
                    {
                        return RedirectToAction("Index");
                    }
                }

            }
            catch (Exception e)
            {

            }
            return View();
        }

        public ActionResult Remove(int Id)
        {
            _CPUService.DeleteCPUFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}