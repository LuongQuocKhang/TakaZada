using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.Core.Models;

namespace TakaZada.Core
{
    public class UserLogin
    {
        public UserLogin() { }
        public UserLogin(string username, int id , string name)
        {
            UserName = username;
            UserId = id;
            Name = name;
        }
        public string UserName { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; }
    }
}
