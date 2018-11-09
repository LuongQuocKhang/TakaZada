using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Radiator
{
    public interface IRadiatorLoad
    {
        IEnumerable<Core.Models.Radiator> Load();
        Core.Models.Radiator LoadById(int Id);
    }
}
