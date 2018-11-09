using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Radiator
{
    public class RadiatorService : IRadiatorLoad , IRadiatorReponsitory
    {
        public Core.Models.Radiator CreateRadiator()
        {
            throw new NotImplementedException();
        }

        public bool DeleteRadiator(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertRadiator(Core.Models.Radiator Radiator)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.Radiator> Load()
        {
            List<Core.Models.Radiator> list = new List<Core.Models.Radiator>();
            using (var db = new DBContext())
            {
                list = db.Radiators.ToList();
            }
            return list;
        }

        public Core.Models.Radiator LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreRadiator(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteRadiator(Core.Models.Radiator Radiator)
        {
            throw new NotImplementedException();
        }
    }
}
