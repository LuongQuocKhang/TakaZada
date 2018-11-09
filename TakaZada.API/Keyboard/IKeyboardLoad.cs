using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Keyboard
{
    public interface IKeyboardLoad
    {
        IEnumerable<Core.Models.Keyboard> Load();
        Core.Models.Keyboard LoadById(int Id);
    }
}
