using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.News
{
    public interface ILoadNew
    {
        IEnumerable<New> LoadHotNew();
        IEnumerable<New> LoadNewByProblem(string Problem);
        NewDetails LoadDetailById(int NewId);
    }
}
