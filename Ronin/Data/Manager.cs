//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Manager
    {
        public Manager()
        {
            this.Achievements_Manager = new HashSet<Achievements_Manager>();
        }
    
        public int Manager_ID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Email_adres { get; set; }
        public string Geslacht { get; set; }
        public Nullable<int> Premium_dagen { get; set; }
        public Nullable<System.DateTime> Ingeschreven { get; set; }
        public byte[] Laatst_Ingelogd { get; set; }
        public string Platform { get; set; }
        public Nullable<int> Site_Logins { get; set; }
        public Nullable<int> Profiel_Bezoekers { get; set; }
        public int LandLand_Code { get; set; }
    
        public virtual ICollection<Achievements_Manager> Achievements_Manager { get; set; }
        public virtual Land Land { get; set; }
    }
}
