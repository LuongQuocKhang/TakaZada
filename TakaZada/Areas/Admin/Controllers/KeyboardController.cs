using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API;
using TakaZada.API.Keyboard;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class KeyboardController : Controller
    {
        private readonly IKeyboardLoad _LoadService;
        private readonly IKeyboardReponsitory _KeyboardService;
        public KeyboardController(IKeyboardLoad LoadService, IKeyboardReponsitory KeyboardService)
        {
            _LoadService = LoadService;
            _KeyboardService = KeyboardService;
        }
        // GET: Admin/Keyboard
        public ActionResult Index()
        {
            ViewBag.Keyboards = _LoadService.Load();
            return View();
        }
        public ActionResult Delete(int Id)
        {
            _KeyboardService.DeleteKeyboard(Id);
            return RedirectToAction("Index");
        }
        public ActionResult Restore(int Id)
        {
            _KeyboardService.RestoreKeyboard(Id);
            return RedirectToAction("Index");
        }
        [ActionName("Update")]
        [HttpGet]
        public ActionResult Update(int Id)
        {
            ViewBag.SelectedKeyboard = _LoadService.LoadById(Id);
            return View();
        }
        [ActionName("Update")]
        [HttpPost]
        public ActionResult Update_Post()
        {
            var keyboard = _LoadService.LoadById(Int32.Parse(Request.Form["Id"]));
            #region update properties
            try { keyboard.Name = Request.Form["Name"]; } catch (Exception e) { }
            try { keyboard.Description = Request.Form["Description"]; } catch (Exception e) { }
            try { keyboard.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
            try { keyboard.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
            try { keyboard.Price = Request.Form["Price"]; } catch (Exception e) { }
            #endregion

            if (_KeyboardService.UpadteKeyboard(keyboard))
            {
                Session["submit_message"] =
                                            "<p class='font-green-sharp' style='font-size: 20px;color: #009614!important;font-weight: bold;'>Update keyboard successful</p>";
                return RedirectToAction("Update", new { Id = keyboard.Id });
            }
            else
            {
                Session["submit_message"] =
                        "<p class='font-green-sharp' style='font-size: 20px;color: #dd0808!important;font-weight: bold;'>Update keyboard failed</p>";
            }
            return RedirectToAction("Update", new
            {
                Id = keyboard.Id
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
            // upload image of computer
            string filename = Request.Form["Image"];
            string src = Request.Form["src"];
            if (UploadFileService.UploadFileToServerBase64(filename, Constants.KEYBOARD_PATH, src))
            {
                var keyboard = _KeyboardService.CreateKeyboard();
                #region update properties
                try { keyboard.Name = Request.Form["Name"]; } catch (Exception e) { }
                try { keyboard.Description = Request.Form["Description"]; } catch (Exception e) { }
                try { keyboard.TradeMark = Request.Form["TradeMark"]; } catch (Exception e) { }
                try { keyboard.WarrantyPeriod = Int32.Parse(Request.Form["WarrantyPeriod"]); } catch (Exception e) { }
                try { keyboard.Price = Request.Form["Price"]; } catch (Exception e) { }
                keyboard.IsDeleted = false;
                keyboard.Image = filename;
                #endregion

                if (_KeyboardService.InsertKeyboard(keyboard))
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
            _KeyboardService.DeleteKeyboardFromDeletedlist(Id);
            return RedirectToAction("Index");
        }
    }
}