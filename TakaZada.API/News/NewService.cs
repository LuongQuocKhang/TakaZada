using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.News
{
    public class NewService : ILoadNew
    {
        public NewDetails LoadDetailById(int NewId)
        {
            NewDetails detail = null;
            using (var db = new DBContext())
            {
                detail = db.NewDetails.FirstOrDefault(x => x.NewId == NewId);
            }
            return detail;
        }

        public IEnumerable<New> LoadHotNew()
        {
            IEnumerable<New> list = null;
            using (var db = new DBContext())
            {
                list = db.News.Where(x => x.Extra == "Hot").ToList();
            }
            return list;
        }

        public IEnumerable<New> LoadNewByProblem(string Problem)
        {
            IEnumerable<New> list = null;
            using (var db = new DBContext())
            {
                list = db.News.Where(x => x.Type == Problem).ToList();
            }
            return list;
        }
    }
}
