using Castle.ActiveRecord;
using Castle.ActiveRecord.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using TES.Domain;

namespace StartCastle.UnitTest
{
    public class TestBase
    {
        public void InitDataBase()
        {
            if (!ActiveRecordStarter.IsInitialized)
            {
                IConfigurationSource source = System.Configuration.ConfigurationManager.GetSection("activerecord") as 
                IConfigurationSource;
                ActiveRecordStarter.Initialize(typeof(EntityBase).Assembly, source);
                
            }
           ActiveRecordStarter.DropSchema();
           ActiveRecordStarter.CreateSchema();
        }
    }
}
