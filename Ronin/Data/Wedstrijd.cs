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
    
    public partial class Wedstrijd
    {
        public int Wedstrijd_ID { get; set; }
        public int ThuisClub_ID { get; set; }
        public int UitClub_ID { get; set; }
        public int CompetitieCompetitie_ID { get; set; }
        public Nullable<short> Thuis_Score { get; set; }
        public Nullable<short> Uit_Score { get; set; }
    
        public virtual Competitie Competitie { get; set; }
    }
}
