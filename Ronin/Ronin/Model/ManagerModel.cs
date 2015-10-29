using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Models
{
    public class ManagerModel
    {
        public int Manager_ID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email_adres { get; set; }
        public string Geslacht { get; set; }
        public Nullable<int> Premium_dagen { get; set; }
        public int LandLand_Code { get; set; }
        public Nullable<System.DateTime> Ingeschreven { get; set; }
        public byte[] Laatst_Ingelogd { get; set; }
        public string Platform { get; set; }
        public Nullable<int> Site_Logins { get; set; }
        public Nullable<int> Profiel_Bezoekers { get; set; }
    }
}