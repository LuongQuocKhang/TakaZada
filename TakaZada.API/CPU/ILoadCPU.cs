using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.CPU
{
    public interface ILoadCPU
    {
        IEnumerable<Core.Models.CPU> Load();
        Core.Models.CPU LoadById(int Id);
        IEnumerable<Core.Models.CPU> LoadByName(string name);
        IEnumerable<Core.Models.CPU> LoadByTradeMark(string Trademark);
    }
}
