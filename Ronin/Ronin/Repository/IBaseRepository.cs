using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ronin.Repository
{
    public interface IBaseRepository<T>
    {
        T Single(object primaryKey);
        Dictionary<string, string> GetAuditNames(dynamic dynamicObject);
    }
}
