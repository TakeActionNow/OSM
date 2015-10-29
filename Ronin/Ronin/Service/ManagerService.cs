using Ronin.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ronin.Service
{
    public class ManagerService
    {
        ManagerRepository _managerRepo;

        public ManagerService()
        {
            _managerRepo = new ManagerRepository();
        }

    }
}