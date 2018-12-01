using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Case
{
    public class CaseService : ILoadCase , ICaseReponsitory
    {
        public Core.Models.Case CreateCase()
        {
            return new Core.Models.Case();
        }

        public bool DeleteCase(int Id)
        {
            try
            {
                using (var db = new DBContext())
                { 
                    var Case = db.Cases.FirstOrDefault(x => x.Id == Id);
                    Case.IsDelete = true;
                    db.SaveChanges();

                    ActivityLogFunction.WriteActivity("Delete Case");
                    return true;
                }
            }
            catch(Exception e)
            {

            }
            return false;
        }

        public bool DeleteCaseFromDeletedlist(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var Case = db.Cases.FirstOrDefault(x => x.Id == Id);
                    db.Cases.Remove(Case);
                    db.SaveChanges();

                    ActivityLogFunction.WriteActivity("Delete Case");
                    return true;
                }
            }
            catch (Exception e)
            {

            }
            return false;
        }

        public bool InsertCase(Core.Models.Case Case)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.Cases.Add(Case);
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Insert case");
                }
                return true;
            }
            catch (Exception e)
            {

            }
            return false;
        }

        public IEnumerable<Core.Models.Case> Load()
        {
            List<Core.Models.Case> list = new List<Core.Models.Case>();
            using (var db = new DBContext())
            {
                list = db.Cases.ToList();
            }
            return list;
        }

        public Core.Models.Case LoadById(int Id)
        {
            Core.Models.Case Case = null;
            using (var db = new DBContext())
            {
                Case = db.Cases.FirstOrDefault(x => x.Id == Id);
            }
            return Case;
        }

        public IEnumerable<Core.Models.Case> LoadByTrademark(string Trademark)
        {
            List<Core.Models.Case> list = new List<Core.Models.Case>();
            using (var db = new DBContext())
            {
                if (Trademark == "Tất cả")
                {
                    list = db.Cases.ToList();
                }
                else
                {
                    list = db.Cases.Where(x => x.TradeMark.Trim().ToLower() == Trademark.Trim().ToLower()).ToList();
                }
            }
            return list;
        }

        public bool RestoreCase(int Id)
        {
            try
            {
                using (var db = new DBContext())
                {
                    var Case = db.Cases.FirstOrDefault(x => x.Id == Id);
                    Case.IsDelete = false;
                    db.SaveChanges();
                    ActivityLogFunction.WriteActivity("Restore case");
                    return true;
                }
            }
            catch(Exception e)
            {

            }
            return false;
        }

        public bool UpdateCase(Core.Models.Case Case)
        {
            if (Case == null) return false;
            try
            {
                using (var db = new DBContext())
                {
                    int id = Case.Id;
                    var temp = db.Cases.FirstOrDefault(x => x.Id == id);
                    PropertyCopier<Core.Models.Case, Core.Models.Case>.Copy(Case, temp);
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
