using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TakaZada.API.Computer;

namespace TakaZada.Tests.Admin
{
    [TestClass]
    public class Computer
    {
        [TestMethod]
        public void Test_UpdateComputer()
        {
            ComputerService service = new ComputerService();
            Assert.AreEqual(true, service.UpadteComputer(new Core.Models.Computer()));
        }
    }
}
