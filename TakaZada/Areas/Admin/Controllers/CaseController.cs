using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Case;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class CaseController : Controller
    {
        private readonly ILoadCase _LoadService;
        private readonly ICaseReponsitory _CaseService;
        public CaseController(ILoadCase LoadService, ICaseReponsitory CaseService)
        {
            _LoadService = LoadService;
            _CaseService = CaseService;
        }
        // GET: Admin/Case
        public ActionResult Index()
        {
            ViewBag.Cases = _LoadService.Load();
            return View();
        }

        public ActionResult Delete(int Id)
        {
            _CaseService.DeleteCase(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _CaseService.RestoreCase(Id);
            return RedirectToAction("Index");
        }

        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedCase = _LoadService.LoadById(Id);
            return View();
        }

        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            int Id = Int32.Parse(Request.Form["Id"]);
            var Case = _LoadService.LoadById(Id);
            #region get properties
            try { Case.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { Case.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
            try { Case.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { Case.Model = Request.Form["Model"]; } catch (Exception e) { }
            try { Case.Color = Request.Form["Color"]; } catch (Exception e) { }
            try { Case.Size = Request.Form["Size"]; } catch (Exception e) { }
            try { Case.MainSupport = Request.Form["MainSupport"]; } catch (Exception e) { }
            try { Case.USB = Request.Form["USB"]; } catch (Exception e) { }
            try { Case.DriverBays = Request.Form["DriverBays"]; } catch (Exception e) { }
            try { Case.Slots = Request.Form["Slots"]; } catch (Exception e) { }
            try { Case.Price = Request.Form["Price"]; } catch (Exception e) { }
            try { Case.Description = Request.Form["Description"]; } catch (Exception e) { }
            int num = 0;
            string price = Case.Price.Replace(".", "").Replace("đ", "");
            if (int.TryParse(price, out num) == false)
            {
                Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #000000!important;font-weight: bold;'>Giá phải nhập số</p>";
                return RedirectToAction("Add");
            }
            else
            {
                if (num < 0)
                {
                    Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #000000!important;font-weight: bold;'>Nhập giá lớn hơn 0</p>";
                    return RedirectToAction("Add");
                }
            }
            #endregion
            if ( _CaseService.UpdateCase(Case))
            {
                Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #64d1a5!important;font-weight: bold;'>Update case successful</p>";
                return RedirectToAction("Update", new { Id = Case.Id });
            }
            else
            {
                Session["submit_message"] = "<p class='font-green-sharp' style='font-size: 20px;color: #f44242!important;font-weight: bold;'>Update case failed</p>";
            }
            return RedirectToAction("Update", new { Id = Case.Id });
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
            if (UploadFileService.UploadFileToServerBase64(filename,Constants.CASE_PATH,src))
            {
                var Case = _CaseService.CreateCase();
                #region get properties
                try { Case.Name = Request.Form["Name"]; } catch (Exception e) { }
                try { Case.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                try { Case.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { Case.Model = Request.Form["Model"]; } catch (Exception e) { }
                try { Case.Color = Request.Form["Color"]; } catch (Exception e) { }
                try { Case.Size = Request.Form["Size"]; } catch (Exception e) { }
                try { Case.MainSupport = Request.Form["MainSupport"]; } catch (Exception e) { }
                try { Case.USB = Request.Form["USB"]; } catch (Exception e) { }
                try { Case.DriverBays = Request.Form["DriverBays"]; } catch (Exception e) { }
                try { Case.Slots = Request.Form["Slots"]; } catch (Exception e) { }
                try { Case.Price = Request.Form["Price"]; } catch (Exception e) { }
                try { Case.Description = Request.Form["Description"]; } catch (Exception e) { }
                Case.IsDelete = false;
                Case.Image = filename;

                #endregion
                string price = Case.Price.Replace(".", "").Replace("đ", "");
                if (int.TryParse(price, out int num) == false)
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
                if (_CaseService.InsertCase(Case))
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    return View();
                }
            }
            else
                return View();
        }

        public ActionResult Remove(int Id)
        {
            _CaseService.DeleteCaseFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}