using Data;
using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class CompetitieRepository
    {
        private LandRepository LandRepository { get; set; }
        private ManagerRepository ManagerRepository { get; set; }

        public CompetitieRepository()
        {
            LandRepository = new LandRepository();
            ManagerRepository = new ManagerRepository();
        }

        /// <summary>
        /// Get competitie by id.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public CompetitieModel GetCompetitieModel(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Competities.SingleOrDefault(x => x.Competitie_ID.Equals(id)));
            }
        }

        /// <summary>
        /// Get CompetitieModel by Land id
        /// </summary>
        /// <returns></returns>
        public CompetitieModel GetCompetitieByLandID(int argLandId)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Competities.SingleOrDefault(x => x.LandLand_Code.Equals(argLandId)));
            }
        }

        /// <summary>
        /// Get competitie by name.
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public CompetitieModel GetCompetitieModelByName(string name)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Competities.SingleOrDefault(x => x.Naam.Equals(name)));
            }
        }

        public List<CompetitieModel> GetAllCompetitieModels()
        {
            List<CompetitieModel> competitieModelList = new List<CompetitieModel>();
            using (OSMEntities3 db = new OSMEntities3())
            {
                var compitieList = db.Competities.ToList();
                for (int i = 0; i < compitieList.Count; ++i)
                {
                    competitieModelList.Add(InstantiateModel(compitieList[i]));
                }
            }
            return competitieModelList;
        }

        /// <summary>
        /// Used to instantiate an CompetitieModel from the competitie table.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        private CompetitieModel InstantiateModel(Competitie competitie)
        {
            LandModel lModel = LandRepository.GetLandModel(competitie.LandLand_Code);
            ManagerModel mModel = ManagerRepository.GetManagerModel(competitie.ManagerManagerID);
            if (competitie != null)
                return new CompetitieModel
                {
                    Competitie_ID = competitie.Competitie_ID,
                    LandModel = lModel,
                    ManagerModel = mModel,
                    Naam = competitie.Naam,

                };
            else
                return null;
        }
    }
}