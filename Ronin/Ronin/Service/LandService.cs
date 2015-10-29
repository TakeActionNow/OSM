using Ronin.Models;
using Ronin.Repository;
using Ronin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Service
{
    public class LandService
    {
        private LandRepository _landRepo;
        private CompetitieService _competitieService;
        private ManagerService _managerService;

        public LandService()
        {
            _landRepo = new LandRepository();
            _competitieService = new CompetitieService();
            _managerService = new ManagerService();
        }

        public LandViewModel GetLandViewModelByName(string landName)
        {
           LandModel landModel = _landRepo.GetLandModelByName(landName);
           CompetitieViewModel compVM = _competitieService.GetCompetitieViewModelByLandId(landModel.Land_Code);

           LandViewModel vModel = new LandViewModel(landModel.Naam, landModel.Continent, compVM.ManaVM, compVM);
           return vModel;
        }
    }
}