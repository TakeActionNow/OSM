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
    
    public partial class Club
    {
        public Club()
        {
            this.Competitie_Club = new HashSet<Competitie_Club>();
        }
    
        public int Club_ID { get; set; }
        public string Naam { get; set; }
        public byte[] Logo { get; set; }
        public Nullable<short> Doelstelling { get; set; }
        public int LandLand_Code { get; set; }
    
        public virtual ICollection<Competitie_Club> Competitie_Club { get; set; }
        public virtual Land Land { get; set; }
    }
}