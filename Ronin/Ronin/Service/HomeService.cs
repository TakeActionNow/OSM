using Ronin.Repository;
using Ronin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Service
{
    public class HomeService
    {
        //Services
        private LandService _landService;

        public HomeService()
        {
            _landService = new LandService();
        }
 
        public LandViewModel GetLand(string landName)
        {
           return _landService.GetLandViewModelByName(landName);
        }
    }
}