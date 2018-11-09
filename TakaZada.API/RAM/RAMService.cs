using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.RAM
{
    public class RAMService : IRAMLoad, IRAMRepository
    {
        public Core.Models.RAM CreateRAM()
        {
            throw new NotImplementedException();
        }

        public bool DeleteRAM(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertRAM(Core.Models.RAM RAM)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.RAM> Load()
        {
            List<Core.Models.RAM> list = new List<Core.Models.RAM>();
            using (var db = new DBContext())
            {
                list = db.RAMs.ToList();
            }
            return list;
        }

        public Core.Models.RAM LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreRAM(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteRAM(Core.Models.RAM RAM)
        {
            throw new NotImplementedException();
        }
    }
}
