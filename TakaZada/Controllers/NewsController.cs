using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TakaZada.API.Handle;
using TakaZada.API.News;

namespace TakaZada.Controllers
{
    public class NewsController : Controller
    {
        private readonly ILoadNew _LoadService;
        public NewsController(ILoadNew LoadService)
        {
            _LoadService = LoadService;
        }
        // GET: News
        public ActionResult Index()
        {
            ViewBag.PerformanceNew = _LoadService.LoadNewByProblem("Hiệu suất");
            ViewBag.HotNews = _LoadService.LoadHotNew();
            ViewBag.OverHeat = _LoadService.LoadNewByProblem("Máy nóng");
            ViewBag.Component = _LoadService.LoadNewByProblem("Linh kiện");
            ViewBag.Other = _LoadService.LoadNewByProblem("Khác");

            return View();
        }

        [HttpGet]
        [ActionName("Consult")]
        public ActionResult Consult()
        {
            return View();
        }
        [HttpPost]
        [ActionName("Consult")]
        public ActionResult Consult_Post()
        {
            string Age = Request.Form["Age"], Time = Request.Form["Time"],
                Goal = Request.Form["Goal"], Improve = Request.Form["Improve"];

            if ((Age.Contains("3") && Age.Contains("5")) || Age.Contains("5")) Session["Problem"] += "Máy tính bạn đã dùng quá lâu ! Gợi ý mua máy tính mới " + "<br/>";
            else
            {
                if ((Time.Contains("6") && Time.Contains("8") || Time.Contains("8"))) Session["Problem"] += "Máy tính bạn dùng quá lâu Nên có thể bị nóng ! Gợi ý mua quạt tản nhiệt " + "<br/>";
                if (Goal == "Học tập") Session["Problem"] += "Nên mua thêm RAM để mở nhiều ứng dụng không bị chậm" + "<br/>";
                else if (Goal == "Giải trí") Session["Problem"] += "Nên mua VGA để trãi nghiệm game tốt hơn" + "<br/>";
                else if (Goal == "Công việc") Session["Problem"] += "Nên mua RAM để mở nhiều ứng dụng và VGA nếu làm về đồ họa" + "<br/>";
            }
            return View();
        }

        public ActionResult Detail(int NewId)
        {
            ViewBag.New = _LoadService.LoadNewById(NewId);
            var detail = _LoadService.LoadDetailById(NewId);
            ViewBag.Detail = detail;
            var solutionItem = _LoadService.LoadSolutionItem(detail.Item);
            ViewBag.solutionItem = solutionItem;
            return View();
        }
    }
}