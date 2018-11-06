using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TakaZada.API.Admin;
using TakaZada.Areas.Admin.Controllers;

namespace TakaZada.Tests.Admin
{
    [TestClass]
    public class Admin
    {
        [TestMethod]
        public void Test_LogIn_method()
        {
            ILogin admin = new AdminService();
            Assert.AreEqual(true, admin.LogIn("admin","123"));
        }
        public void Test_LogOute_method()
        {
            //ILogout admin = new AdminService();
            //Assert.AreEqual(true, admin.LogOut());
        }
    }
}
