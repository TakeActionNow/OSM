using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Models
{
    public class LandModel
    {
        public int Land_Code { get; set; }
        public string Naam { get; set; }
        public string Continent { get; set; }
        public byte[] Vlag { get; set; }
    }
}