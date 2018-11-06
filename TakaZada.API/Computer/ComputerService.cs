using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Computer
{
    public class ComputerService : ILoad
    {
        public IEnumerable<Core.Models.Computer> Load()
        {
            List<Core.Models.Computer> list = new List<Core.Models.Computer>();
            using (var db = new DBContext())
            {
                list = db.Computers.ToList();
            }
            return list;
        }
    }
}
