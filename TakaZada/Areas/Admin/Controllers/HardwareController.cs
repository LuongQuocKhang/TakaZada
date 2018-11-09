using System.Web.Mvc;
using TakaZada.API.Hardware;

namespace TakaZada.Areas.Admin.Controllers
{
    public class HardwareController : Controller
    {
        private readonly ILoadHardware _LoadService;
        public HardwareController(ILoadHardware LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: Admin/Hardware
        public ActionResult Index()
        {
            ViewBag.Hardwares = _LoadService.Load();
            return View();
        }
    }
}