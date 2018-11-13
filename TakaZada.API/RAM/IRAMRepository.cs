using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.RAM
{
    public interface IRAMRepository
    {
        Core.Models.RAM CreateRAM();
        bool InsertRAM(Core.Models.RAM RAM);
        bool DeleteRAM(int Id);
        bool DeleteRAMFromDeletedlist(int Id);

        bool RestoreRAM(int Id);
        bool UpdateRAM(Core.Models.RAM RAM);
    }
}
