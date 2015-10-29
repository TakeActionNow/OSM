using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Models
{
    public class ClubModel
    {
        public int Club_ID { get; set; }
        public string Naam { get; set; }
        public byte[] Logo { get; set; }
        public Nullable<short> Doelstelling { get; set; }
        public LandModel LandModel { get; set; }
    }
}