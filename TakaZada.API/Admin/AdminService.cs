using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using TakaZada.API.Handle;
using TakaZada.Core;

namespace TakaZada.API.Admin
{
    public class AdminService : ILogin , IUser
    {
        public AdminService() { }

        public UserLogin CreateUser(string username, string id, string type)
        {
            return new UserLogin(username, Constants.ADMIN_ID, type);
        }

        public UserLogin GetCurrentUser()
        {
            if (HttpContext.Current.Session[Constants.ADMIN_SESSION] == null)
            {
                throw new Exception("User is not defined");
            }
            return (UserLogin)HttpContext.Current.Session[Constants.ADMIN_SESSION];
        }

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
