using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Keyboard
{
    public interface IKeyboardReponsitory
    {
        Core.Models.Keyboard CreateKeyboard();
        bool InsertKeyboard(Core.Models.Keyboard Keyboard);
        bool DeleteKeyboard(int Id);
        bool RestoreKeyboard(int Id);
        bool UpadteKeyboard(Core.Models.Keyboard Keyboard);
    }
}
