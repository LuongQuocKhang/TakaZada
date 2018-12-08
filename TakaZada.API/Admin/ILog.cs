using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Admin
{
    public interface ILog
    {
        bool LogIn(string username, string password = "");
        bool AdminLogIn(string username, string password = "");
        bool Logout();
        bool register(string FirstName, string LastName,string Email, string Password, string PhoneNumber, string Sex, DateTime DateOfBirth);
    }
}
