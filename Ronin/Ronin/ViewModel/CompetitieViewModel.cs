using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.ViewModel
{
    public class CompetitieViewModel
    {
        public string Naam { get; set; }

        public int ManagerPunten { get; set; }

        public LandViewModel LandVM { get; set; }

        public ManagerViewModel ManaVM { get; set; }

        public CompetitieViewModel()
        {
        }

        public CompetitieViewModel(CompetitieModel compModel)
        {
            Naam = compModel.Naam;
        }

    }
}