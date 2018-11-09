using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.API.Keyboard
{
    public class KeyboardService : IKeyboardLoad, IKeyboardReponsitory
    {
        public Core.Models.Keyboard CreateKeyboard()
        {
            throw new NotImplementedException();
        }

        public bool DeleteKeyboard(int Id)
        {
            throw new NotImplementedException();
        }

        public bool InsertKeyboard(Core.Models.Keyboard Keyboard)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Core.Models.Keyboard> Load()
        {
            List<Core.Models.Keyboard> list = new List<Core.Models.Keyboard>();
            using (var db = new DBContext())
            {
                list = db.Keyboards.ToList();
            }
            return list;
        }

        public Core.Models.Keyboard LoadById(int Id)
        {
            throw new NotImplementedException();
        }

        public bool RestoreKeyboard(int Id)
        {
            throw new NotImplementedException();
        }

        public bool UpadteKeyboard(Core.Models.Keyboard Keyboard)
        {
            throw new NotImplementedException();
        }
    }
}
