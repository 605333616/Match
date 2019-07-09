using Castle.DynamicProxy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace TES.Core
{
    public class Container
    {
        private static Container instance;
        private static XDocument xml;
        public static Container Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Container();
                }
                if (xml == null)
                {
                    xml = XDocument.Load(AppDomain.CurrentDomain.BaseDirectory + "/Configuration/LMSConfiguration.xml");
                }
                return instance;
            }
        }
        public T Resolve<T>()
            where T : class
        {
            return GetComponentInstance<T>(typeof(T).Name);
        }
        public T GetComponentInstance<T>(string service)
            where T : class
        {
            if (xml == null)
            { }
            var element = (from p in xml.Root.Elements("element")
                           where p.Attribute("id").Value.Equals(service)
                           select new
                           {
                               serviceNamespace = p.Attribute("Service").Value,
                               classNamespace = p.Attribute("Class").Value
                           }).FirstOrDefault();
            if (string.IsNullOrEmpty(element.classNamespace))
            {
                throw new Exception("配置文件结点" + service + "出错!");
            }
            string[] configs = element.classNamespace.Split(',');
            if (configs.Length != 2)
            {
                throw new Exception("配置文件结点" + service + "出错!");
            }
            ProxyGenerator generator = new ProxyGenerator();
            T t = (T)Assembly.Load(configs[1]).CreateInstance(configs[0]);
            return t;
        }
        public void Dispose()
        {
            instance = null;
            xml = null;
        }
    }
}
