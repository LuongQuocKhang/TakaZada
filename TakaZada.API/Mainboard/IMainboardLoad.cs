using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Mainboard
{
    public interface IMainboardLoad
    {
        IEnumerable<Core.Models.MainBoard> Load();
        IEnumerable<Core.Models.MainBoard> LoadByTrademark(string Trademark);
        Core.Models.MainBoard LoadById(int Id);
    }
}
