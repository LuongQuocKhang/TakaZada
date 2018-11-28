using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.VGA
{
    public interface IVGALoad
    {
        IEnumerable<Core.Models.VGA> Load();
        IEnumerable<Core.Models.VGA> LoadByTrademark(string Trademark);
        Core.Models.VGA LoadById(int Id);
    }
}
