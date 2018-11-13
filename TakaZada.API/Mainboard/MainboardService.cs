using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Mainboard
{
    public class MainboardService : IMainboardLoad, IMainboardReponsitory
    {
        public MainBoard CreateMainboard()
        {
            return new MainBoard();
        }

        public bool DeleteMainboardFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var mainboard = db.MainBoards.FirstOrDefault(x => x.Id == Id);
                    db.MainBoards.Remove(mainboard);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Mainboard");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteMainboard(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var mainboard = db.MainBoards.FirstOrDefault(x => x.Id == Id);
                    mainboard.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Mainboard");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertMainboard(MainBoard Mainboard)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.MainBoards.Add(Mainboard);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert Mainboard");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<MainBoard> Load()
        {
            List<Core.Models.MainBoard> list = new List<Core.Models.MainBoard>();
            using (var db = new DBContext())
            {
                list = db.MainBoards.ToList();
            }
            return list;
        }

        public Core.Models.MainBoard LoadById(int Id)
        {
            MainBoard mainboard = null;
            using (var db = new DBContext())
            {
                mainboard = db.MainBoards.FirstOrDefault(x => x.Id == Id);
            }
            return mainboard;
        }

        public bool RestoreMainboard(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var mainboard = db.MainBoards.FirstOrDefault(x => x.Id == Id);
                    mainboard.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore Mainboard");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpdateMainboard(MainBoard Mainboard)
        {
            if (Mainboard == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = Mainboard.Id;
                    var temp = db.MainBoards.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.MainBoard, Core.Models.MainBoard>.Copy(Mainboard, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update Mainboard");
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
