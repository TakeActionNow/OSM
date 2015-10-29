using Ronin.Model;
using Ronin.Models;
using Ronin.Repository;
using Ronin.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Service
{
    public class CompetitieService
    {
        private CompetitieRepository _competitieRepo;
        private ManagerCompetitieRepository _managerCompetitieRepo;
        private ClubRepository _clubRepo;

        public CompetitieService()
        {
            _competitieRepo = new CompetitieRepository();
            _managerCompetitieRepo = new ManagerCompetitieRepository();
            _clubRepo = new ClubRepository();
        }

        public CompetitieViewModel GetCompetitieViewModelByLandId(int argLandId)
        {
            CompetitieModel compM = _competitieRepo.GetCompetitieByLandID(argLandId);
            CompetitieViewModel compVM = new CompetitieViewModel(compM);

            //Get the managerCompetitieModel
            ManagerCompetitieModel managerCompetitieModel = _managerCompetitieRepo.GetManagerCompetitieModel(compM.Competitie_ID);
            compVM.ManagerPunten = managerCompetitieModel.ManagerPunten;

            //Get the landVM
            LandModel lModel = compM.LandModel;
            LandViewModel lVM = new LandViewModel(lModel);
            //Get the managerVM
            ManagerModel mModel = compM.ManagerModel;
            ManagerViewModel managerVM = new ManagerViewModel(mModel);
            //Set them in the compVM before returning.
            compVM.LandVM = lVM;
            compVM.ManaVM = managerVM;

            return compVM;
        }
    }
}