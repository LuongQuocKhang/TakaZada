using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.VGA
{
    public class VGAService : IVGALoad, IVGAReponsitory
    {
        public Core.Models.VGA CreateVGA()
        {
            return new Core.Models.VGA();
        }

        public bool DeleteVGA(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var vga = db.VGAs.FirstOrDefault(x => x.Id == Id);
                    vga.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete VGA");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteVGAFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var vga = db.VGAs.FirstOrDefault(x => x.Id == Id);
                    db.VGAs.Remove(vga);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete VGA");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertVGA(Core.Models.VGA VGA)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.VGAs.Add(VGA);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert VGA");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<Core.Models.VGA> Load()
        {
            List<Core.Models.VGA> list = new List<Core.Models.VGA>();
            using (var db = new DBContext())
            {
                list = db.VGAs.ToList();
            }
            return list;
        }

        public Core.Models.VGA LoadById(int Id)
        {
            Core.Models.VGA vga = null;
            using (var db = new DBContext())
            {
                vga = db.VGAs.FirstOrDefault(x => x.Id == Id);
            }
            return vga;
        }

        public IEnumerable<Core.Models.VGA> LoadByTrademark(string Trademark)
        {
            List<Core.Models.VGA> list = new List<Core.Models.VGA>();
            using (var db = new DBContext())
            {
                if (Trademark == "Tất cả")
                {
                    list = db.VGAs.ToList();
                }
                else
                {
                    list = db.VGAs.Where(x => x.TradeMark.Trim().ToLower() == Trademark.Trim().ToLower()).ToList();
                }
            }
            return list;
        }

        public bool RestoreVGA(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var vga = db.VGAs.FirstOrDefault(x => x.Id == Id);
                    vga.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore VGA");
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpdateVGA(Core.Models.VGA VGA)
        {
            if (VGA == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = VGA.Id;
                    var temp = db.VGAs.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.VGA, Core.Models.VGA>.Copy(VGA, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update VGA");
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
