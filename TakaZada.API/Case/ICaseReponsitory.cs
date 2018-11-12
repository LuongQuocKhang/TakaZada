using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Case
{
    public interface ICaseReponsitory
    {
        Core.Models.Case CreateCase();
        bool InsertCase(Core.Models.Case Case);
        bool DeleteCase(int Id);
        bool DeleteCaseFromDeletedlist(int Id);
        bool RestoreCase(int Id);
        bool UpadteCase(Core.Models.Case Case);
    }
}
