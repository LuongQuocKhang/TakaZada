using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Hardware
{
    public class HardwareService : ILoadHardware, IHardwareReponsitiry
    {
        public Core.Models.Hardware CreateHardware()
        {
            return new Core.Models.Hardware();
        }

        public bool DeleteHardware(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var hardware = db.Hardwares.FirstOrDefault(x => x.Id == Id);
                    hardware.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete hardware");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteHardwareFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var hardware = db.Hardwares.FirstOrDefault(x => x.Id == Id);
                    db.Hardwares.Remove(hardware);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete hardware");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertHardware(Core.Models.Hardware Hardware)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.Hardwares.Add(Hardware);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert hardware");
                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<Core.Models.Hardware> Load()
        {
            List<Core.Models.Hardware> list = new List<Core.Models.Hardware>();
            using (var db = new DBContext())
            {
                list = db.Hardwares.ToList();
            }
            return list;
        }

        public Core.Models.Hardware LoadById(int Id)
        {
            Core.Models.Hardware hardware = null;
            using (var db = new DBContext())
            {
                hardware = db.Hardwares.FirstOrDefault(x => x.Id == Id);
            }
            return hardware;
        }

        public IEnumerable<Core.Models.Hardware> LoadByTrademark(string Trademark)
        {
            List<Core.Models.Hardware> list = new List<Core.Models.Hardware>();
            using (var db = new DBContext())
            {
                if (Trademark == "Tất cả")
                {
                    list = db.Hardwares.ToList();
                }
                else
                {
                    list = db.Hardwares.Where(x => x.TradeMark.Trim().ToLower() == Trademark.ToLower()).ToList();
                }
            }
            return list;
        }

        public bool RestoreHardware(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var hardware = db.Hardwares.FirstOrDefault(x => x.Id == Id);
                    hardware.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore hardware");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpdateHardware(Core.Models.Hardware Hardware)
        {
            if (Hardware == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = Hardware.Id;
                    var temp = db.Hardwares.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.Hardware, Core.Models.Hardware>.Copy(Hardware, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update Hardware");
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
