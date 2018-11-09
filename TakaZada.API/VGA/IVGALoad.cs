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
        Core.Models.VGA LoadById(int Id);
    }
}
