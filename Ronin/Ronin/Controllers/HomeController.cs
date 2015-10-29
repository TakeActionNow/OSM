using Ronin.Service;
using Ronin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Ronin.Controllers
{
    public class HomeController : Controller
    {
        private HomeService _homeService;
        //
        // GET: /Home/

        public HomeController()
        {
            _homeService = new HomeService(); 
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Canada()
        {
            LandViewModel landVM = _homeService.GetLand("Canada");
            return View(landVM);
        }

        [HttpGet]
        public ActionResult Amerika()
        {
            LandViewModel landVM = _homeService.GetLand("Amerika");
            return View(landVM);
        }

        [HttpGet]
        public ActionResult Netherlands()
        {
            LandViewModel landVm = _homeService.GetLand("Netherlands");
            return View(landVm);
        }

    }
}
