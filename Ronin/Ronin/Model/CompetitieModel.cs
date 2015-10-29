using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Models
{
    public class CompetitieModel
    {
        public int Competitie_ID { get; set; }
        public string Naam { get; set; }
     
        public LandModel LandModel { get; set; }
        public ManagerModel ManagerModel { get; set; }
    }
}