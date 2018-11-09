using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TakaZada.API.Handle;

namespace TakaZada.API
{
    public static class UploadFileService
    {
        public static bool UploadFileToServerBase64(string imageUrl, string path, string src)
        {
            try
            {
                if (!string.IsNullOrEmpty(imageUrl))
                {
                    var root = System.Web.HttpContext.Current.Server.MapPath(string.Format("~/" + path));

                    DirectoryInfo DirInfo = new DirectoryInfo(root);
                    foreach (var File in DirInfo.GetFiles())
                    {
                        if (File.Name.ToUpper().Equals(imageUrl.ToUpper()))
                        {
                            var filename = File.Name;
                            File.Delete();
                        }
                    }
                    MemoryStream ms = new MemoryStream(Convert.FromBase64String(src));
                    System.Drawing.Bitmap imageSave = new System.Drawing.Bitmap(ms);
                    var name = imageUrl.Replace('-', ' ');
                    imageSave.Save(root + name);
                }
                return true;
            }
            catch (Exception e)
            {
            }
            return false;
        }
    }
}
