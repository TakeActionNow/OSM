using Data;
using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class ManagerRepository
    {
        private LandRepository LandRepository { get; set; }
        
        public ManagerRepository()
        {
            LandRepository = new LandRepository();
        }

        public ManagerModel GetManagerModel(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Managers.SingleOrDefault(x => x.Manager_ID.Equals(id)));
            }
        }

        public List<ManagerModel> GetAllManagerModels()
        {
            List<ManagerModel> managerModelList = new List<ManagerModel>();
            using (OSMEntities3 db = new OSMEntities3())
            {
                var managerList = db.Managers.ToList();
                for (int i = 0; i < managerList.Count; ++i)
                {
                    managerModelList.Add(InstantiateModel(managerList[i]));
                }
            }
            return managerModelList;
        }

        /// <summary>
        /// Used to instantiate an ManagerModel from the manager table.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        public ManagerModel InstantiateModel(Manager manager)
        {
            LandModel landModel = LandRepository.GetLandModel(manager.LandLand_Code);
            if (manager != null)
                return new ManagerModel
                {
                    Email_adres = manager.Email_adres,
                    Geslacht = manager.Geslacht,
                    Ingeschreven = manager.Ingeschreven,
                    Laatst_Ingelogd = manager.Laatst_Ingelogd,
                    LandLand_Code = landModel.Land_Code,
                    Manager_ID = manager.Manager_ID,
                    Password = manager.Password,
                    Platform = manager.Platform,
                    Premium_dagen = manager.Premium_dagen,
                    Profiel_Bezoekers = manager.Profiel_Bezoekers,
                    Site_Logins = manager.Site_Logins,
                    Username = manager.Username
                };
            else
                return null;
        }

    }
}