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
        IEnumerable<Core.Models.Keyboard> LoadByTradeMark(string Trademark);
        Core.Models.Keyboard LoadById(int Id);
    }
}
