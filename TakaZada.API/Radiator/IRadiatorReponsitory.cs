using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Radiator
{
    public interface IRadiatorReponsitory
    {
        Core.Models.Radiator CreateRadiator();
        bool InsertRadiator(Core.Models.Radiator Radiator);
        bool DeleteRadiator(int Id);
        bool RestoreRadiator(int Id);
        bool UpadteRadiator(Core.Models.Radiator Radiator);
    }
}
