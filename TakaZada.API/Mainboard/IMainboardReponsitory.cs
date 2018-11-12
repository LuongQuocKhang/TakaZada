using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Mainboard
{
    public interface IMainboardReponsitory
    {
        Core.Models.MainBoard CreateMainboard();
        bool InsertMainboard(Core.Models.MainBoard Mainboard);
        bool DeleteMainboard(int Id);
        bool DeleteMainboardFromDeletedlist(int Id);

        bool RestoreMainboard(int Id);
        bool UpadteMainboard(Core.Models.MainBoard Mainboard);
    }
}
