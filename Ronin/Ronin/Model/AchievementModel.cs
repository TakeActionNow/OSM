using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Models
{
    public class AchievementModel
    {
        public int Achievement_ID { get; set; }
        public string Naam { get; set; }
        public byte[] Logo { get; set; }
        public string Instructie { get; set; }
        public Nullable<int> Beloning { get; set; }
    }
}