using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using TakaZada.API.Handle;
using TakaZada.Core;
using TakaZada.Core.Models;

namespace TakaZada.API.Admin
{
    public class AdminService : ILog , IUser
    {
        public AdminService() { }

        public bool AdminLogIn(string username, string password = "")
        {
            if (!String.IsNullOrEmpty(username))
            {
                if (username == "admin" && password == "123")
                {
                    return true;
                }
            }
            return false;
        }

        public UserLogin CreateUser(string username, int Id, string type)
        {
            if ( type == "Admin")
            {
               return new UserLogin(username,Id, type);
            }
            else
            {
               return new UserLogin(username,Id, type);
            }
        }

        public UserLogin GetCurrentUser()
        {
            if (HttpContext.Current.Session[Constants.USER_SESSION] == null)
            {
                return null;
            }
            return (UserLogin)HttpContext.Current.Session[Constants.USER_SESSION];
        }

        public UserLogin GetUserByEmail(string Email)
        {
            using (var db = new DBContext())
            {
                var user = db.UserAccounts.FirstOrDefault(x => x.Email == Email);
                if ( user != null)
                    return new UserLogin(user.Email, user.Id, user.FirstName);
            }
            return null;
        }

        public bool LogIn(string username, string password = "")
        {
            if (!String.IsNullOrEmpty(username))
            {
                using (var db = new DBContext())
                {
                    var user = db.UserAccounts.FirstOrDefault(x => x.Email == username && x.Password == password);
                    if (user != null) return true;
                }
            }
            return false;
        }
        public bool Logout()
        {
            throw new NotImplementedException();
        }
    }
}
