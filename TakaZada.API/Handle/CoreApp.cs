using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace TakaZada.API.Handle
{
    public static class CoreApp
    {
        public static string getUserIP()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }
            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
        public static string getUserAgent()
        {
            String userAgent = HttpContext.Current.Request.UserAgent.ToString();
            if (userAgent != null) return userAgent;

            return "undefined";
        }
    }
}
