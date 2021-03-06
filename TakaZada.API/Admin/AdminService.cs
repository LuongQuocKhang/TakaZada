﻿using System;
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

        public UserAccount GetUserInfo(string Email)
        {
            UserAccount info = null;
            using (var db = new DBContext())
            {
                info = db.UserAccounts.FirstOrDefault(x => x.Email == Email);
            }
            return info;
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

        public bool register(string FirstName , string LastName ,string Email, string Password , string PhoneNumber , string Sex , DateTime DateOfBirth,string Address)
        {
            try
            {
                using (var db = new DBContext())
                {
                    UserAccount user = new UserAccount() { FirstName = FirstName, LastName = LastName, Email = Email, Password = Password, PhoneNumber = PhoneNumber, Sex = Sex, DateOfBirth = DateOfBirth , Address  = Address };
                    var email = user.Email;
                    if (db.UserAccounts.FirstOrDefault(x => x.Email == email) != null) return false;
                    db.UserAccounts.Add(user);
                    db.SaveChanges();
                    return true;
                }
            }
            catch (Exception e) { }
            return false;
        }
    }
}
