using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Computer
{
    public interface ILoad
    {
        IEnumerable<TakaZada.Core.Models.Computer> Load();
        TakaZada.Core.Models.Computer LoadById(int Id);
        IEnumerable<TakaZada.Core.Models.Computer> LoadByTradeMark(string Trademark);
    }
}
