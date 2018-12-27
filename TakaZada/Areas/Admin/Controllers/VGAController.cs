using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.VGA;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class VGAController : Controller
    {
        private readonly IVGALoad _LoadService;
        private readonly IVGAReponsitory _VGAService;
        public VGAController(IVGALoad LoadService, IVGAReponsitory VGAService)
        {
            _LoadService = LoadService;
            _VGAService = VGAService;
        }
        // GET: Admin/VGA
        public ActionResult Index()
        {
            ViewBag.VGAs = _LoadService.Load();
            return View();
        }
        public ActionResult Delete(int Id)
        {
            bool result = _VGAService.DeleteVGA(Id);
            return RedirectToAction("index");
        }
        public ActionResult Restore(int Id)
        {
            bool result = _VGAService.RestoreVGA(Id);
            return RedirectToAction("index");
        }
        public ActionResult Remove(int Id)
        {
            bool result = _VGAService.DeleteVGAFromDeletedlist(Id);
            return RedirectToAction("index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedVGA = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post(int Id)
        {
            var vga = _LoadService.LoadById(Id);
            #region Get properties
            try { vga.Name = Request.Form["name"]; } catch(Exception e){ }
            try { vga.TradeMark = Request.Form["TradeMark"]; } catch(Exception e){ }
            try { vga.Label = Request.Form["Label"]; } catch(Exception e){ }
            try { vga.ChipsetManufacturer = Request.Form["ChipsetManufacturer"]; } catch(Exception e){ }
            try { vga.Model = Request.Form["Model"]; } catch(Exception e){ }
            try { vga.VGA1 = Request.Form["VGA"]; } catch(Exception e){ }
            try { vga.BoostClock = Request.Form["BoostClock"]; } catch(Exception e){ }
            try { vga.VGAMemory = Request.Form["VGAMemory"]; } catch(Exception e){ }
            try { vga.RamType = Request.Form["RamType"]; } catch(Exception e){ }
            try { vga.MaxResolution = Request.Form["MaxResolution"]; } catch(Exception e){ }
            try { vga.Directx = Request.Form["Directx"]; } catch(Exception e){ }
            try { vga.Size = Request.Form["Size"]; } catch(Exception e){ }
            try { vga.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch(Exception e){ }
            try { vga.Description = Request.Form["Description"]; } catch(Exception e){ }
            #endregion
            int num = 0;
            string price = vga.Price.Replace(".", "").Replace("đ", "");
            if (int.TryParse(price, out num) == false)
            {
                Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #f44242!important;font-weight: bold;'>Giá phải nhập số</p>";
                return RedirectToAction("Add");
            }
            else
            {
                if (num < 0)
                {
                    Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #f44242!important;font-weight: bold;'>Nhập giá lớn hơn 0</p>";
                    return RedirectToAction("Add");
                }
            }
            if ( _VGAService.UpdateVGA(vga))
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #000000!important;font-weight: bold;'>Update vga successful</p>";
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update vga failed</p>";
            }
            return RedirectToAction("Update", new { Id = vga.Id });
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
            if (UploadFileService.UploadFileToServerBase64(filename, Constants.VGA_PATH, src))
            {
                var vga = _VGAService.CreateVGA();
                #region Get properties
                try { vga.Name = Request.Form["name"]; } catch (Exception e) { }
                try { vga.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { vga.Label = Request.Form["Label"]; } catch (Exception e) { }
                try { vga.ChipsetManufacturer = Request.Form["ChipsetManufacturer"]; } catch (Exception e) { }
                try { vga.Model = Request.Form["Model"]; } catch (Exception e) { }
                try { vga.VGA1 = Request.Form["VGA"]; } catch (Exception e) { }
                try { vga.BoostClock = Request.Form["BoostClock"]; } catch (Exception e) { }
                try { vga.VGAMemory = Request.Form["VGAMemory"]; } catch (Exception e) { }
                try { vga.RamType = Request.Form["RamType"]; } catch (Exception e) { }
                try { vga.MaxResolution = Request.Form["MaxResolution"]; } catch (Exception e) { }
                try { vga.Directx = Request.Form["Directx"]; } catch (Exception e) { }
                try { vga.Size = Request.Form["Size"]; } catch (Exception e) { }
                try { vga.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                try { vga.Description = Request.Form["Description"]; } catch (Exception e) { }
                vga.Image = filename;
                vga.IsDeleted = false;
                #endregion

                int num = 0;
                string price = vga.Price.Replace(".", "").Replace("đ", "");
                if (int.TryParse(price, out num) == false)
                {
                    Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #f44242!important;font-weight: bold;'>Giá phải nhập số</p>";
                    return RedirectToAction("Add");
                }
                else
                {
                    if (num < 0)
                    {
                        Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #f44242!important;font-weight: bold;'>Nhập giá lớn hơn 0</p>";
                        return RedirectToAction("Add");
                    }
                }
                if (_VGAService.InsertVGA(vga))
                {
                    return RedirectToAction("Index");
                }
            }
            else return View();
            return View();
        }
    }
}