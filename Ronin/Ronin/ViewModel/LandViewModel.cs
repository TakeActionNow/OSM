using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.ViewModel
{
    public class LandViewModel
    {
        public ManagerViewModel ManagerViewModel {get;set;}

        public CompetitieViewModel CompetitieViewModel {get;set;}

        public string Naam {get;set;}
        public string Continent { get; set; }

        public LandViewModel(LandModel argLandModel)
        {
            Naam = argLandModel.Naam;
            Continent = argLandModel.Continent;
        }

        public LandViewModel(string argNaam, string argContinent, ManagerViewModel argManagerViewModel, CompetitieViewModel argCompetitieViewModel)
        {
            Naam = argNaam;
            Continent = argContinent;
            ManagerViewModel = argManagerViewModel;
            CompetitieViewModel = argCompetitieViewModel;
        }
    }
}