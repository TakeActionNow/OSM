using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.ViewModel
{
    public class ManagerViewModel
    {
        public string EmailAdres { get; set; }
        public string Geslacht { get; set; }
        public int PremiumDagen { get; set; }

        public DateTime Ingeschreven { get; set; }
        public DateTime Laatst_Ingelogd { get; set; }
        public char Platform { get; set; }
        public int Site_Logins { get; set; }
        public int Profiel_Bezoekers { get; set; }

        public ManagerViewModel()
        {
        }

        public ManagerViewModel(ManagerModel argManagerModel)
        {
            EmailAdres = argManagerModel.Email_adres;
            Geslacht = argManagerModel.Geslacht;
            PremiumDagen = argManagerModel.Premium_dagen ?? default(int);
            Ingeschreven = argManagerModel.Ingeschreven ?? default(DateTime);
        }

    }
}