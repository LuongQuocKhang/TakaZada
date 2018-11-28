using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Hardware
{
    public interface ILoadHardware
    {
        IEnumerable<Core.Models.Hardware> Load();
        IEnumerable<Core.Models.Hardware> LoadByTrademark(string Trademark);
        Core.Models.Hardware LoadById(int Id);
    }
}
