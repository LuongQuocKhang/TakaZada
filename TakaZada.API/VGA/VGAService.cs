using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.VGA
{
    public class VGAService : IVGALoad, IVGAReponsitory
    {
        public Core.Models.VGA CreateVGA()
        {
            throw new NotImplementedException();
        }

        public bool DeleteVGA(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertVGA(Core.Models.VGA VGA)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.VGA> Load()
        {
            List<Core.Models.VGA> list = new List<Core.Models.VGA>();
            using (var db = new DBContext())
            {
                list = db.VGAs.ToList();
            }
            return list;
        }

        public Core.Models.VGA LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreVGA(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteVGA(Core.Models.VGA VGA)
        {
            throw new NotImplementedException();
        }
    }
}
