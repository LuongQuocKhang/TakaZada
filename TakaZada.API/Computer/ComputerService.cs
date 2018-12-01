using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;
using TakaZada.Core.Models;

namespace TakaZada.API.Computer
{
    public class ComputerService : ILoad , IComputerReponsitory
    {
        public bool DeleteComputer(int Id)
        {
            using (var db = new DBContext())
            {
                try
                {
                    var computer = db.Computers.FirstOrDefault(x => x.Id == Id);
                    computer.IsDeleted = true;
                    db.SaveChanges();
                    return true;
                }
                catch(Exception e)
                {

                }
            }
            return false;
        }

        public bool InsertComputer(Core.Models.Computer computer)
        {
            try
            {
                using (var db = new DBContext())
                {
                    db.Computers.Add(computer);
                    db.SaveChanges();
                    
                    return true;
                }
            }
            catch(Exception e)
            {

            }
            return false;
        }

        public IEnumerable<Core.Models.Computer> Load()
        {
            List<Core.Models.Computer> list = new List<Core.Models.Computer>();
            using (var db = new DBContext())
            {
                list = db.Computers.ToList();
            }
            return list;
        }

        public Core.Models.Computer LoadById(int Id)
        {
            using (var db = new DBContext())
            {
                return db.Computers.FirstOrDefault(x => x.Id == Id);
            }
        }

        public bool RestoreComputer(int Id)
        {
            using (var db = new DBContext())
            {
                try
                {
                    var computer = db.Computers.FirstOrDefault(x => x.Id == Id);
                    computer.IsDeleted = false;
                    db.SaveChanges();
                    return true;
                }
                catch (Exception e)
                {

                }
            }
            return false;
        }

        public bool UpdateComputer(Core.Models.Computer computer)
        {
            if ( computer != null || computer.Id.ToString() != "")
            {
                int computerid = computer.Id;
                using (var db = new DBContext())
                {
                    var temp = db.Computers.FirstOrDefault(x => x.Id == computerid);
                    PropertyCopier<Core.Models.Computer, Core.Models.Computer>.Copy(computer, temp);
                    db.SaveChanges();
                    return true;
                }
            }
            return false;
        }
        public Core.Models.Computer CreateComputer()
        {
            return new Core.Models.Computer();
        }

        public bool DeleteComputerFromDeletedlist(int Id)
        {
            using (var db = new DBContext())
            {
                try
                {
                    var computer = db.Computers.FirstOrDefault(x => x.Id == Id);
                    db.Computers.Remove(computer);
                    db.SaveChanges();
                    return true;
                }
                catch (Exception e)
                {

                }
            }
            return false;
        }
        public IEnumerable<Core.Models.Computer> LoadByTradeMark(string Trademark)
        {
            List<Core.Models.Computer> list = new List<Core.Models.Computer>();
            using (var db = new DBContext())
            {
                if (Trademark.Trim().Equals("Tất cả"))
                {
                    list = db.Computers.ToList();
                }
                else
                {
                    list = db.Computers.Where(x => x.Trademark.Trim().ToLower().Contains(Trademark.Trim().ToLower())).ToList();
                }
            }
            return list;
        }
    }
}
