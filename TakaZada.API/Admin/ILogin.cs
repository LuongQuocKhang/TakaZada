using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Admin
{
    public interface ILogin
    {
        bool LogIn(string username, string password = "");
    }
}
