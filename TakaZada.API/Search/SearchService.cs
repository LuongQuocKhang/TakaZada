using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core;
using TakaZada.Core.Models;

namespace TakaZada.API.Search
{
    public class SearchService : ISearchQuerry
    {
        public SearchItem createSearchItem(int ItemId, string Name, string Image, string Type, string Price)
        {
            return new SearchItem() { ItemId  = ItemId , Name = Name , Image = Image , Type = Type , Price = Price };
        }

        public IEnumerable<SearchItem> Search(string type, string nameContain)
        {
            List<SearchItem> list = new List<SearchItem>();
            using (var db = new DBContext())
            {
                if ( type == "Case" || type == "Tất cả")
                {
                    var Cases = db.Cases.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Cases)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Case", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "Computer" || type == "Tất cả")
                {
                    var Computers = db.Computers.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Computers)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Computer", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "CPU" || type == "Tất cả")
                {
                    var CPUs = db.CPUs.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in CPUs)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "CPU", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "Hardware" || type == "Tất cả")

                {
                    var Hardwares = db.Hardwares.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Hardwares)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Hardware", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "Keyboard" || type == "Tất cả")
                {
                    var Keyboards = db.Keyboards.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Keyboards)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Keyboard", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "Mainboard" || type == "Tất cả")
                {
                    var Mainboards = db.MainBoards.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Mainboards)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Mainboard", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "Radiator" || type == "Tất cả")
                {
                    var Radiators = db.Radiators.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in Radiators)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "Radiator", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "RAM" || type == "Tất cả")
                {
                    var RAMs = db.RAMs.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in RAMs)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "RAM", item.Price);
                        list.Add(searchitem);
                    }
                }
                if (type == "VGA" || type == "Tất cả")
                {
                    var VGAs = db.VGAs.Where(x => x.Name.Contains(nameContain)).ToList();
                    foreach (var item in VGAs)
                    {
                        var searchitem = createSearchItem(item.Id, item.Name, item.Image, "VGA", item.Price);
                        list.Add(searchitem);
                    }
                }
            }
            return list;
        }

        public IEnumerable<New> SearchNews(string nameContain)
        {
            throw new NotImplementedException();
        }
    }
}
