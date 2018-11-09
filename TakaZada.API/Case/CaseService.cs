using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Case
{
    public class CaseService : ILoadCase , ICaseReponsitory
    {
        public Core.Models.Case CreateCase()
        {
            throw new NotImplementedException();
        }

        public bool DeleteCase(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertCase(Core.Models.Case Case)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.Case> Load()
        {
            List<Core.Models.Case> list = new List<Core.Models.Case>();
            using (var db = new DBContext())
            {
                list = db.Cases.ToList();
            }
            return list;
        }

        public Core.Models.Case LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreCase(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteCase(Core.Models.Case Case)
        {
            throw new NotImplementedException();
        }
    }
}
