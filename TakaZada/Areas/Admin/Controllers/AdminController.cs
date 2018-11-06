using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Admin;

namespace TakaZada.Areas.Admin.Controllers
{
    public class AdminController : Controller
    {
        private readonly ILogin _LoginService;
        public AdminController(ILogin LoginService)
        {
            _LoginService = LoginService;
        }
        // GET: Admin/Admin
        public ActionResult Index()
        {
            return View();
        }
        [ActionName("Login")]
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [ActionName("Login")]
        [HttpPost]
        public ActionResult Login_Post()
        {
            string username = "", password = "";

            if ( ModelState.IsValid)
            {
                try { username = Request.Form["Username"]; } catch (Exception e) { }
                try { password = Request.Form["Password"]; } catch (Exception e) { }

                if (_LoginService.LogIn(username, password) == true )
                {
                    return RedirectToAction("Index");
                }
            }

            return View();
        }
    }
}