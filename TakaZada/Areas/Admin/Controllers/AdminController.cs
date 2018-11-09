using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Admin;
using TakaZada.API.Handle;
using TakaZada.Core;

namespace TakaZada.Areas.Admin.Controllers
{
    public class AdminController : Controller
    {
        private readonly ILogin _LoginService;
        private readonly IUser _UserService;
        public AdminController(ILogin LoginService , IUser UserService)
        {
            _LoginService = LoginService;
            _UserService = UserService;
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
                    var user = _UserService.CreateUser(username,password,"admin");
                    Session[Constants.ADMIN_SESSION] = user;
                    // write history
                    ActivityLogFunction.WriteActivity(user.Name + " Login");
                    return RedirectToAction("Index");
                }
            }

            return View();
        }
    }
}