using System;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Computer;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class ComputerController : Controller
    {
        private readonly ILoad _LoadService;
        private readonly IComputerReponsitory _ComputerService;

        public ComputerController(ILoad load , IComputerReponsitory ComputerService)
        {
            _LoadService = load;
            _ComputerService = ComputerService;
        }

        // GET: Admin/Computer
        public ActionResult Index()
        {
            ViewBag.Computers = _LoadService.Load();
            return View();
        }

        public ActionResult Delete(int Id)
        {
            _ComputerService.DeleteComputer(Id);
            return RedirectToAction("Index");
        }

        public ActionResult Restore(int Id)
        {
            _ComputerService.RestoreComputer(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedComputer = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            // Get computer and update it properties
            var computer = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));

            #region update properties
            try { computer.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { computer.CPU = Request.Form["CPU"]; } catch (Exception e) { }
            try { computer.RAM = Request.Form["RAM"]; } catch (Exception e) { }
            try { computer.VideoCard = Request.Form["VideoCard"]; } catch (Exception e) { }
            try { computer.Hardware = Request.Form["Hardware"]; } catch (Exception e) { }
            try { computer.SlotSupport = Request.Form["SlotSupport"]; } catch (Exception e) { }
            try { computer.Display = Request.Form["Display"]; } catch (Exception e) { }
            try { computer.OS = Request.Form["OS"]; } catch (Exception e) { }
            try { computer.Type = Request.Form["Type"]; } catch (Exception e) { }
            try { computer.Trademark = Request.Form["Trademark"]; } catch (Exception e) { }
            try { computer.Feature = Request.Form["Feature"]; } catch (Exception e) { }
            try { computer.Color = Request.Form["Color"]; } catch (Exception e) { }
            try { computer.CPUSeries = Request.Form["CPUSeries"]; } catch (Exception e) { }
            try { computer.Resolution = Request.Form["Resolution"]; } catch (Exception e) { }
            try { computer.StandardOfScreen = Request.Form["StandardOfScreen"]; } catch (Exception e) { }
            try { computer.Size = Request.Form["Size"]; } catch (Exception e) { }
            try { computer.Mass = Request.Form["Mass"]; } catch (Exception e) { }
            try { computer.WarrantyPeriod =Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
            try { computer.Price = Request.Form["Price"]; } catch (Exception e) { }
            try { computer.Description = Request.Form["Description"]; } catch (Exception e) { }
            #endregion

            if (_ComputerService.UpdateComputer(computer))
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #009614!important;font-weight: bold;'>Update computer successful</p>";
                return RedirectToAction("Update", new { Id = computer.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update computer failed</p>";
            }
            return RedirectToAction("Update", new { Id = computer.Id });
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
                if (UploadFileService.UploadFileToServerBase64(filename, Constants.COMPUTER_PATH, src))
                {
                    var computer = _ComputerService.CreateComputer();
                    #region add properties
                    try { computer.Name = Request.Form["Name"]; } catch (Exception e) { }
                    try { computer.CPU = Request.Form["CPU"]; } catch (Exception e) { }
                    try { computer.RAM = Request.Form["RAM"]; } catch (Exception e) { }
                    try { computer.VideoCard = Request.Form["VideoCard"]; } catch (Exception e) { }
                    try { computer.Hardware = Request.Form["Hardware"]; } catch (Exception e) { }
                    try { computer.SlotSupport = Request.Form["SlotSupport"]; } catch (Exception e) { }
                    try { computer.Display = Request.Form["Display"]; } catch (Exception e) { }
                    try { computer.OS = Request.Form["OS"]; } catch (Exception e) { }
                    try { computer.Type = Request.Form["Type"]; } catch (Exception e) { }
                    try { computer.Trademark = Request.Form["Trademark"]; } catch (Exception e) { }
                    try { computer.Feature = Request.Form["Feature"]; } catch (Exception e) { }
                    try { computer.Color = Request.Form["Color"]; } catch (Exception e) { }
                    try { computer.CPUSeries = Request.Form["CPUSeries"]; } catch (Exception e) { }
                    try { computer.Resolution = Request.Form["Resolution"]; } catch (Exception e) { }
                    try { computer.StandardOfScreen = Request.Form["StandardOfScreen"]; } catch (Exception e) { }
                    try { computer.Size = Request.Form["Size"]; } catch (Exception e) { }
                    try { computer.Mass = Request.Form["Mass"]; } catch (Exception e) { }
                    try { computer.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                    try { computer.Price = Request.Form["Price"]; } catch (Exception e) { }
                    try { computer.Description = Request.Form["Description"]; } catch (Exception e) { }
                    try { computer.IsDeleted = false; } catch (Exception e) { }
                    computer.Image = filename;
                    #endregion

                    if (_ComputerService.InsertComputer(computer))
                    {
                        return RedirectToAction("Index");
                    }
                }
                // create computer
                
            }
            catch (Exception e) { }
            return View();
        }

        public ActionResult Remove(int Id)
        {
            _ComputerService.DeleteComputerFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}