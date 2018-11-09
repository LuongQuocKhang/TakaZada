using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Admin;
using TakaZada.Core.Models;

namespace TakaZada.API.Handle
{
    public static class ActivityLogFunction
    {
        public static void WriteActivity(string Action)
        {
            using (var db = new DBContext())
            {
                try
                {
                    var UserId = (new AdminService()).GetCurrentUser().UserId;
                    ActivityLog log = new ActivityLog();
                    log.Action = Action;
                    log.UserId = UserId;
                    log.IP = CoreApp.getUserIP();
                    log.UserAgent = CoreApp.getUserAgent();
                    log.ActionTime = DateTime.Now;

                    db.ActivityLogs.Add(log);
                    db.SaveChanges();
                }
                catch (Exception e)
                {

                }
            }
        }

    }
}
