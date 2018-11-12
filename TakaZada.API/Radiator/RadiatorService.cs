using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Radiator
{
    public class RadiatorService : IRadiatorLoad , IRadiatorReponsitory
    {
        public Core.Models.Radiator CreateRadiator()
        {
            return new Core.Models.Radiator();
        }

        public bool DeleteRadiator(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var radiator = db.Radiators.FirstOrDefault(x => x.Id == Id);
                    radiator.IsDeleted = true;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Radiator");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool DeleteRadiatorFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var radiator = db.Radiators.FirstOrDefault(x => x.Id == Id);
                    db.Radiators.Remove(radiator);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Delete Radiator");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool InsertRadiator(Core.Models.Radiator Radiator)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.Radiators.Add(Radiator);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert Radiator");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public IEnumerable<Core.Models.Radiator> Load()
        {
            List<Core.Models.Radiator> list = new List<Core.Models.Radiator>();
            using (var db = new DBContext())
            {
                list = db.Radiators.ToList();
            }
            return list;
        }

        public Core.Models.Radiator LoadById(int Id)
        {
            Core.Models.Radiator radiator = null;
            using (var db = new DBContext())
            {
                radiator = db.Radiators.FirstOrDefault(x => x.Id == Id);
            }
            return radiator;
        }

        public bool RestoreRadiator(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var radiator = db.Radiators.FirstOrDefault(x => x.Id == Id);
                    radiator.IsDeleted = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore Radiator");

                }
                return true;
            }
            catch (Exception e) { }
            return false;
        }

        public bool UpadteRadiator(Core.Models.Radiator Radiator)
        {
            if (Radiator == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = Radiator.Id;
                    var temp = db.Radiators.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.Radiator, Core.Models.Radiator>.Copy(Radiator, temp);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Update Radiator");
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
