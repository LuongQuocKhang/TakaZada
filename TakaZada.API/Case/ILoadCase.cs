﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TakaZada.API.Case
{
    public interface ILoadCase
    {
        IEnumerable<Core.Models.Case> Load();
        IEnumerable<Core.Models.Case> LoadByTrademark(string Trademark);
        Core.Models.Case LoadById(int Id);

    }
}
