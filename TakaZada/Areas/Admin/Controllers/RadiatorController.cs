﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Radiator;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class RadiatorController : Controller
    {
        private readonly IRadiatorLoad _LoadService;
        private readonly IRadiatorReponsitory _RadiatorService;
        public RadiatorController(IRadiatorLoad LoadService, IRadiatorReponsitory RadiatorService)
        {
            _LoadService = LoadService;
            _RadiatorService = RadiatorService;
        }
        // GET: Admin/Radiator
        public ActionResult Index()
        {
            ViewBag.Radiators = _LoadService.Load();
            return View();
        }
        public ActionResult Delete(int Id)
        {
            _RadiatorService.DeleteRadiator(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore (int Id)
        {
            _RadiatorService.RestoreRadiator(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Remove(int Id)
        {
            _RadiatorService.DeleteRadiatorFromDeletedlist(Id);
            return RedirectToAction("Index");
        }

        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedRadiator = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            var radiator = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));
            #region Get properties
            try { radiator.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { radiator.Description = Request.Form["Description"]; } catch (Exception e) { }
            try { radiator.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { radiator.Label = Request.Form["Label"]; } catch (Exception e) { }
            try { radiator.Material = Request.Form["Material"]; } catch (Exception e) { }
            try { radiator.Speed = Request.Form["Speed"]; } catch (Exception e) { }
            try { radiator.Size = Request.Form["Size"]; } catch (Exception e) { }
            try { radiator.FanSize = Request.Form["FanSize"]; } catch (Exception e) { }
            try { radiator.Socket = Request.Form["Socket"]; } catch (Exception e) { }
            try { radiator.Price = Request.Form["Price"]; } catch (Exception e) { }
            #endregion

            int num = 0;
            string price = radiator.Price.Replace(".", "").Replace("đ", "");
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

            if (_RadiatorService.UpdateRadiator(radiator))
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #000000!important;font-weight: bold;'>Update radiator successful</p>";
                return RedirectToAction("Update", new { Id = radiator.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update radiator failed</p>";
            }
            return RedirectToAction("Update", new { Id = radiator.Id });
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
                if (UploadFileService.UploadFileToServerBase64(filename, Constants.RADIATOR_PATH, src))
                {
                    var radiator = _RadiatorService.CreateRadiator();
                    #region Get properties
                    try { radiator.Name = Request.Form["Name"]; } catch (Exception e) { }
                    try { radiator.Description = Request.Form["Description"]; } catch (Exception e) { }
                    try { radiator.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                    try { radiator.Label = Request.Form["Label"]; } catch (Exception e) { }
                    try { radiator.Material = Request.Form["Material"]; } catch (Exception e) { }
                    try { radiator.Speed = Request.Form["Speed"]; } catch (Exception e) { }
                    try { radiator.Size = Request.Form["Size"]; } catch (Exception e) { }
                    try { radiator.FanSize = Request.Form["FanSize"]; } catch (Exception e) { }
                    try { radiator.Socket = Request.Form["Socket"]; } catch (Exception e) { }
                    try { radiator.Price = Request.Form["Price"]; } catch (Exception e) { }
                    radiator.Image = filename;
                    radiator.IsDeleted = false;
                    #endregion
                    int num = 0;
                    string price = radiator.Price.Replace(".", "").Replace("đ", "");
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
                    if (_RadiatorService.InsertRadiator(radiator))
                    {
                        return RedirectToAction("Index");
                    }
                }
            }

            catch (Exception e) { }
            return View();
        }
    }
}