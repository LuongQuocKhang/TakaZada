﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.RAM
{
    public interface IRAMLoad
    {
        IEnumerable<Core.Models.RAM> Load();
        IEnumerable<Core.Models.RAM> LoadByTrademark(string Trademark);
        Core.Models.RAM LoadById(int Id);
    }
}
