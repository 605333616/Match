using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace StartCastle.UnitTest
{
    [TestClass]
    public class UnitTest1:TestBase
    {
        [TestMethod]
        public void TestGetAll()
        {
            InitDataBase();
        }
    }
}
