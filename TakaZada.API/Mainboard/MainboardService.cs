using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Mainboard
{
    public class MainboardService : IMainboardLoad, IMainboardReponsitory
    {
        public MainBoard CreateMainboard()
        {
            throw new NotImplementedException();
        }

        public bool DeleteMainboard(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertMainboard(MainBoard Mainboard)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<MainBoard> Load()
        {
            List<Core.Models.MainBoard> list = new List<Core.Models.MainBoard>();
            using (var db = new DBContext())
            {
                list = db.MainBoards.ToList();
            }
            return list;
        }

        public Core.Models.MainBoard LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreMainboard(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteMainboard(MainBoard Mainboard)
        {
            throw new NotImplementedException();
        }
    }
}
