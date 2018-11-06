using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Admin
{
    public class AdminService : ILogin
    {
        public AdminService() { }

        public bool LogIn(string username, string password = "")
        {
            if (!String.IsNullOrEmpty(username))
            {
                if ( username == "admin" && password == "123")
                {
                    return true;
                }
            }
            return false;
        }

        public bool LogOut()
        {
            throw new NotImplementedException();
        }
    }
}
