using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.RAM
{
    public class RAMService : IRAMLoad, IRAMRepository
    {
        public Core.Models.RAM CreateRAM()
        {
            return new Core.Models.RAM();
        }

        public bool DeleteRAM(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var ram = db.RAMs.FirstOrDefault(x => x.Id == Id);
                    ram.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Ram");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteRAMFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var ram = db.RAMs.FirstOrDefault(x => x.Id == Id);
                    db.RAMs.Remove(ram);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Ram");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertRAM(Core.Models.RAM RAM)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.RAMs.Add(RAM);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert Ram");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<Core.Models.RAM> Load()
        {
            List<Core.Models.RAM> list = new List<Core.Models.RAM>();
            using (var db = new DBContext())
            {
                list = db.RAMs.ToList();
            }
            return list;
        }

        public Core.Models.RAM LoadById(int Id)
        {
            Core.Models.RAM ram = null;
            using (var db = new DBContext())
            {
                ram = db.RAMs.FirstOrDefault(x => x.Id == Id);
            }
            return ram;
        }

        public bool RestoreRAM(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var ram = db.RAMs.FirstOrDefault(x => x.Id == Id);
                    ram.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore Ram");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpadteRAM(Core.Models.RAM RAM)
        {
            if (RAM == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = RAM.Id;
                    var temp = db.RAMs.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.RAM, Core.Models.RAM>.Copy(RAM, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update RAM");
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
