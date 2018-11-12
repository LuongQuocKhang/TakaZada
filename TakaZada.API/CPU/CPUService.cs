using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.CPU
{
    public class CPUService : ILoadCPU, ICPUReponsitory
    {
        public Core.Models.CPU CreateCPU()
        {
            return new Core.Models.CPU();
        }

        public bool DeleteCPU(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var cpu = db.CPUs.FirstOrDefault(x => x.Id == Id);
                    cpu.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete cpu");
                    return true;
                }
            }
            catch(Exception e)
            {

            }
            return false;
        }

        public bool DeleteCPUFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var cpu = db.CPUs.FirstOrDefault(x => x.Id == Id);
                    db.CPUs.Remove(cpu);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete cpu");
                    return true;
                }
            }
            catch (Exception e)
            {

            }
            return false;
        }

        public bool InsertCPU(Core.Models.CPU CPU)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.CPUs.Add(CPU);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert cpu");
                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<Core.Models.CPU> Load()
        {
            List<Core.Models.CPU> list = new List<Core.Models.CPU>();
            using (var db = new DBContext())
            {
                list = db.CPUs.ToList();
            }
            return list;
        }

        public Core.Models.CPU LoadById(int Id)
        {
            Core.Models.CPU cpu = null;
            using (var db = new DBContext())
            {
                cpu = db.CPUs.FirstOrDefault(x => x.Id == Id);
            }
            return cpu;
        }

        public bool RestoreCPU(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var cpu = db.CPUs.FirstOrDefault(x => x.Id == Id);
                    cpu.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore cpu");
                    return true;
                }
            }
            catch (Exception e)
            {

            }
            return false;
        }

        public bool UpadteCPU(Core.Models.CPU CPU)
        {
            if (CPU == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = CPU.Id;
                    var temp = db.CPUs.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.CPU, Core.Models.CPU>.Copy(CPU, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update case");
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
