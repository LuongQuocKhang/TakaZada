using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Hardware
{
    public interface IHardwareReponsitiry
    {
        Core.Models.Hardware CreateHardware();
        bool InsertHardware(Core.Models.Hardware Hardware);
        bool DeleteHardware(int Id);
        bool DeleteHardwareFromDeletedlist(int Id);

        bool RestoreHardware(int Id);
        bool UpadteHardware(Core.Models.Hardware Hardware);
    }
}
