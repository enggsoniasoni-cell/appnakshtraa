using Microsoft.VisualStudio.TestTools.UnitTesting;
using NakshatraaDiaries.Library;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NakshatraaDiaries.Library.Tests
{
    [TestClass()]
    public class ToolsTests
    {
        [TestMethod()]
        public void StringToTimezoneTest()
        {
            //var xx = Tools.StringToTimezone("00:00");
            var yx = Tools.StringToTimezone("+00:00");
            var cc = yx == TimeSpan.Zero;
        }
    }
}