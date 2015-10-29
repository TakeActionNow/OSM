using Data;
using Ronin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class ManagerCompetitieRepository
    {
        public ManagerCompetitieRepository()
        {
        }

        /// <summary>
        /// Get ManagerCompetitie by argCompetitieID.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ManagerCompetitieModel GetManagerCompetitieModel(int argCompetitieID)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Manager_Competitie.SingleOrDefault(x => x.CompetitieCompetitie_ID.Equals(argCompetitieID)));
            }
        }

        /// <summary>
        /// Used to instantiate an ManagerCompetitieModel from the competitie table.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        private ManagerCompetitieModel InstantiateModel(Manager_Competitie argManagerCompetitie)
        {
            ManagerCompetitieModel managerCompetitieModel = null;
            if (argManagerCompetitie != null)
            {
                int managerPunten;
                if (argManagerCompetitie.ManagerPunten != null)
                {
                    managerPunten = (int)argManagerCompetitie.ManagerPunten;
                    managerCompetitieModel = new ManagerCompetitieModel();
                    managerCompetitieModel.ManagerPunten = managerPunten;
                }
                else
                {
                    return managerCompetitieModel;
                }
            }
            else
            {
                return managerCompetitieModel;
            }
            return managerCompetitieModel;
        }
    }
}