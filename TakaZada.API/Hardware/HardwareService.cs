using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Hardware
{
    public class HardwareService : ILoadHardware, IHardwareReponsitiry
    {
        public Core.Models.Hardware CreateHardware()
        {
            throw new NotImplementedException();
        }

        public bool DeleteHardware(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertHardware(Core.Models.Hardware Hardware)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.Hardware> Load()
        {
            List<Core.Models.Hardware> list = new List<Core.Models.Hardware>();
            using (var db = new DBContext())
            {
                list = db.Hardwares.ToList();
            }
            return list;
        }

        public Core.Models.Hardware LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreHardware(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteHardware(Core.Models.Hardware Hardware)
        {
            throw new NotImplementedException();
        }
    }
}
