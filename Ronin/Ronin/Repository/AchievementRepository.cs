using Data;
using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class AchievementRepository
    {
        public AchievementModel GetAchievementModel(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Achievements.SingleOrDefault(x => x.Achievement_ID.Equals(id)));
            }
        }

        public List<AchievementModel> GetAllAchievementModels()
        {
            List<AchievementModel> achievementModelList = new List<AchievementModel>();
            using (OSMEntities3 db = new OSMEntities3())
            {
                var achievementList = db.Achievements.ToList();
                for (int i = 0; i < achievementList.Count; ++i)
                {
                    achievementModelList.Add(InstantiateModel(achievementList[i]));
                }
            }
            return achievementModelList;
        }

        /// <summary>
        /// Used to instantiate an AchievementModel from the achievement table.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        public AchievementModel InstantiateModel(Achievement achievement)
        {
            if (achievement != null)
                return new AchievementModel
                {
                    Achievement_ID = achievement.Achievement_ID,
                    Beloning = achievement.Beloning,
                    Instructie = achievement.Instructie,
                    Logo = achievement.Logo,
                    Naam = achievement.Naam
                };
            else
                return null;
        }
    }
}