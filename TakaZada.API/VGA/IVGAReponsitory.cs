using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.VGA
{
    public interface IVGAReponsitory
    {
        Core.Models.VGA CreateVGA();
        bool InsertVGA(Core.Models.VGA VGA);
        bool DeleteVGA(int Id);
        bool RestoreVGA(int Id);
        bool UpadteVGA(Core.Models.VGA VGA);
    }
}
