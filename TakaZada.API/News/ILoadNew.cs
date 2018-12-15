using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core;
using TakaZada.Core.Models;

namespace TakaZada.API.News
{
    public interface ILoadNew
    {
        IEnumerable<New> LoadHotNew();
        IEnumerable<New> LoadNewByProblem(string Problem);
        NewDetails LoadDetailById(int NewId);
        New LoadNewById(int NewId);
        IEnumerable<SolutionItem> LoadSolutionItem(string item);
    }
}
