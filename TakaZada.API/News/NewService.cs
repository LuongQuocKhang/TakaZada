using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core;
using TakaZada.Core.Models;

namespace TakaZada.API.News
{
    public class NewService : ILoadNew
    {
        public NewDetails LoadDetailById(int NewId)
        {
            NewDetails detail = null;
            using (var db = new DBContext())
            {
                detail = db.NewDetails.FirstOrDefault(x => x.NewId == NewId);
            }
            return detail;
        }

        public IEnumerable<New> LoadHotNew()
        {
            IEnumerable<New> list = null;
            using (var db = new DBContext())
            {
                list = db.News.Where(x => x.Extra == "Hot").ToList();
            }
            return list;
        }

        public New LoadNewById(int NewId)
        {
            New New = null;
            using (var db = new DBContext())
            {
                New = db.News.FirstOrDefault(x => x.NewId == NewId);
            }
            return New;
        }

        public IEnumerable<New> LoadNewByProblem(string Problem)
        {
            IEnumerable<New> list = null;
            using (var db = new DBContext())
            {
                list = db.News.Where(x => x.Type == Problem).ToList();
            }
            return list;
        }

        public IEnumerable<SolutionItem> LoadSolutionItem(string item)
        {
            List<SolutionItem> list = new List<SolutionItem>();
            if (item == null) return list;
            string[] itemlist = item.Split(',');
            using (var db = new DBContext())
            {
                foreach (var solution in itemlist)
                {
                    SolutionItem temp = null; 
                    switch (solution)
                    {
                        case "Case":
                            List<TakaZada.Core.Models.Case> Case = db.Cases.Take(2).ToList();
                            for (int i = 0; i < Case.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = Case[i].Id, Image = Case[i].Image, Type = "Case" };
                                list.Add(temp);
                            }
                            break;
                        case "Computer":
                            List<TakaZada.Core.Models.Computer> Computer = db.Computers.Take(2).ToList();
                            for (int i = 0; i < Computer.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = Computer[i].Id, Image = Computer[i].Image, Type = "Computer" };
                                list.Add(temp);
                            }
                            break;
                        case "CPU":
                            List<TakaZada.Core.Models.CPU> CPU = db.CPUs.Take(2).ToList();
                            for (int i = 0; i < CPU.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = CPU[i].Id, Image = CPU[i].Image, Type = "CPU" };
                                list.Add(temp);
                            }
                            break;
                        case "Hardware":
                            List<TakaZada.Core.Models.Hardware> Hardware = db.Hardwares.Take(2).ToList();
                            for (int i = 0; i < Hardware.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = Hardware[i].Id, Image = Hardware[i].Image, Type = "Hardware" };
                                list.Add(temp);
                            }
                            break;
                        case "Keyboard":
                            List<TakaZada.Core.Models.Keyboard> Keyboard = db.Keyboards.Take(2).ToList();
                            for (int i = 0; i < Keyboard.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = Keyboard[i].Id, Image = Keyboard[i].Image, Type = "Keyboard" };
                                list.Add(temp);
                            }
                            break;
                        case "MainBoard":
                            List<TakaZada.Core.Models.MainBoard> MainBoard = db.MainBoards.Take(2).ToList();
                            for (int i = 0; i < MainBoard.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = MainBoard[i].Id, Image = MainBoard[i].Image, Type = "MainBoard" };
                                list.Add(temp);
                            }
                            break;
                        case "Radiator":
                            List<TakaZada.Core.Models.Radiator> Radiator = db.Radiators.Take(2).ToList();
                            for (int i = 0; i < Radiator.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = Radiator[i].Id, Image = Radiator[i].Image, Type = "Radiator" };
                                list.Add(temp);
                            }
                            break;
                        case "RAM":
                            List<TakaZada.Core.Models.RAM> RAM = db.RAMs.Take(2).ToList();
                            for (int i = 0; i < RAM.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = RAM[i].Id, Image = RAM[i].Image, Type = "RAM" };
                                list.Add(temp);
                            }
                            break;
                        case "VGA":
                            List<TakaZada.Core.Models.VGA> VGA = db.VGAs.Take(2).ToList();
                            for (int i = 0; i < VGA.Count; i++)
                            {
                                temp = new SolutionItem() { ItemId = VGA[i].Id, Image = VGA[i].Image, Type = "VGA" };
                                list.Add(temp);
                            }
                            break;
                    }
                }
            }

            return list;
        }
    }
}
