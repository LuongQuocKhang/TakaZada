using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Computer
{
    public interface IComputerReponsitory
    {
        Core.Models.Computer CreateComputer();
        bool InsertComputer(Core.Models.Computer computer);
        bool DeleteComputer(int Id);
        bool DeleteComputerFromDeletedlist(int Id);
        bool RestoreComputer(int Id);
        bool UpdateComputer(Core.Models.Computer computer);

    }
}
