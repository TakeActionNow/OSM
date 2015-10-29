using Data;
using Ronin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Repository
{
    public class ClubRepository
    {
        private LandRepository LandRepository { get; set; }

        public ClubRepository()
        {
            LandRepository = new LandRepository();
        }

        public ClubModel GetClubModel(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Clubs.SingleOrDefault(x => x.Club_ID.Equals(id)));
            }
        }

        /// <summary>
        /// Get ClubModel by LandId
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ClubModel GetClubModelByLandId(int id)
        {
            using (OSMEntities3 db = new OSMEntities3())
            {
                return InstantiateModel(db.Clubs.SingleOrDefault(x => x.LandLand_Code.Equals(id)));
            }
        }

        /// <summary>
        /// Used to retrieve all the ClubModel from the club table.
        /// </summary>
        /// <returns></returns>
        public List<ClubModel> GetAllClubModels()
        {
            List<ClubModel> clubModelList = new List<ClubModel>();
            using (OSMEntities3 db = new OSMEntities3())
            {
                var clubList = db.Clubs.ToList();
                for (int i = 0; i < clubList.Count; ++i)
                {
                    clubModelList.Add(InstantiateModel(clubList[i]));
                }
            }
            return clubModelList;
        }

        /// <summary>
        /// Used to instantiate an ClubModel from the club.
        /// </summary>
        /// <param name="achievement"></param>
        /// <returns></returns>
        public ClubModel InstantiateModel(Club club)
        {
            LandModel landModelFK = LandRepository.GetLandModel(club.LandLand_Code);

            if (club != null)
                return new ClubModel
                {
                    Club_ID = club.Club_ID,
                    Doelstelling = club.Doelstelling,
                    LandModel = landModelFK,
                    Logo = club.Logo,
                    Naam = club.Naam
                };
            else
                return null;
        }
    }
}