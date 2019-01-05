using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core;

namespace TakaZada.API.Search
{
    public interface ISearchQuerry 
    {
        IEnumerable<SearchItem> Search(string type, string nameContain);
        SearchItem createSearchItem(int ItemId, string Name, string Image, string Type, string Price);
        IEnumerable<Core.Models.New> SearchNews(string nameContain);
    }
}
