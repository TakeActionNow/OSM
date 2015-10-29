using Data;
using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class LandRepository
    {
        //Get Land by db Id
        public LandModel GetLandModel(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Lands.SingleOrDefault(x => x.Land_Code.Equals(id)));
            }
        }

        //Get land by name
        public LandModel GetLandModelByName(string name)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Lands.SingleOrDefault(x => x.Naam.Equals(name)));
            }
        }

        /// <summary>
        /// Get all the land models
        /// </summary>
        /// <returns></returns>
        public List<LandModel> GetAllLandModels()
        {
            List<LandModel> landModelList = new List<LandModel>();
            using (OSMEntities3 db = new OSMEntities3())
            {
                var landList = db.Lands.ToList();
                for (int i = 0; i < landModelList.Count; ++i)
                {
                    landModelList.Add(InstantiateModel(landList[i]));
                }
            }
            return landModelList;
        }

        /// <summary>
        /// Used to instantiate an LandModel from the land table.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        public LandModel InstantiateModel(Land land)
        {
            if (land != null)
                return new LandModel
                {
                    Land_Code = land.Land_Code,
                    Continent = land.Continent,
                    Naam = land.Naam,
                    Vlag = land.Vlag,
                };
            else
                return null;
        }
    }
}