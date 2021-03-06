﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Hardware;

namespace TakaZada.Controllers
{
    public class HardwareController : Controller
    {
        // GET: Hardware
        private readonly ILoadHardware _LoadService;
        public HardwareController(ILoadHardware LoadService)
        {
            _LoadService = LoadService;
        }
        public ActionResult Index(string Name)
        {
            ViewBag.ListHardware = _LoadService.LoadByTrademark(Name);
            return View();
        }
        public ActionResult Details(int Id)
        {
            try
            {
                var Hardware = _LoadService.LoadById(Id);
                ViewBag.SelectedHardware = Hardware;
                ViewBag.TheSameTrademark = _LoadService.LoadByTrademark(Hardware.TradeMark).Where(x => x.Id != Hardware.Id).ToList();
            }
            catch (Exception e) { }
            return View();
        }
    }
}