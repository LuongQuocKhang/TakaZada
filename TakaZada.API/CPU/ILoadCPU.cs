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
    }
}
