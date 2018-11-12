using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Keyboard
{
    public class KeyboardService : IKeyboardLoad, IKeyboardReponsitory
    {
        public Core.Models.Keyboard CreateKeyboard()
        {
            return new Core.Models.Keyboard();
        }

        public bool DeleteKeyboard(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var keyboard = db.Keyboards.FirstOrDefault(x => x.Id == Id);
                    keyboard.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete keyboard");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteKeyboardFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var keyboard = db.Keyboards.FirstOrDefault(x => x.Id == Id);
                    db.Keyboards.Remove(keyboard);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete keyboard");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertKeyboard(Core.Models.Keyboard Keyboard)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.Keyboards.Add(Keyboard);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert keyboard");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
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
            Core.Models.Keyboard keyboard = null;
            using (var db = new DBContext())
            {
                keyboard = db.Keyboards.FirstOrDefault(x => x.Id == Id);
            }
            return keyboard;
        }

        public bool RestoreKeyboard(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var keyboard = db.Keyboards.FirstOrDefault(x => x.Id == Id);
                    ActivityLogFunction.WriteActivity("Restore keyboard");

                    keyboard.IsDeleted = false; ;
                    db.SaveChanges();
                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpadteKeyboard(Core.Models.Keyboard Keyboard)
        {
            if (Keyboard == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = Keyboard.Id;
                    var temp = db.Keyboards.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.Keyboard, Core.Models.Keyboard>.Copy(Keyboard, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update keyboard");
                    return true;
                }
            }
            catch (Exception e)
            {

            }
            return false;
        }
    }
}
