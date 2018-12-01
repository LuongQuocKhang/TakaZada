using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core;

namespace TakaZada.API.Handle
{
    public interface IUser
    {
        UserLogin CreateUser(string username , int Id , string type);
        UserLogin GetCurrentUser();
        UserLogin GetUserByEmail(string Email);
    }
}
