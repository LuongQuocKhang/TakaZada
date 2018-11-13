using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.CPU
{
    public interface ICPUReponsitory
    {
        Core.Models.CPU CreateCPU();
        bool InsertCPU(Core.Models.CPU CPU);
        bool DeleteCPU(int Id);
        bool DeleteCPUFromDeletedlist(int Id);

        bool RestoreCPU(int Id);
        bool UpdateCPU(Core.Models.CPU CPU);
    }
}
