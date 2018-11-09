using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.CPU
{
    public class CPUService : ILoadCPU, ICPUReponsitory
    {
        public Core.Models.CPU CreateCPU()
        {
            throw new NotImplementedException();
        }

        public bool DeleteCPU(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertCPU(Core.Models.CPU CPU)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.CPU> Load()
        {
            List<Core.Models.CPU> list = new List<Core.Models.CPU>();
            using (var db = new DBContext())
            {
                list = db.CPUs.ToList();
            }
            return list;
        }

        public Core.Models.CPU LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreCPU(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteCPU(Core.Models.CPU CPU)
        {
            throw new NotImplementedException();
        }
    }
}
