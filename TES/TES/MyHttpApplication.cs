using Castle.ActiveRecord;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TES
{
    public class MyHttpApplication : HttpApplication
    {
        public MyHttpApplication()
        {
            BeginRequest += new EventHandler(OnBeginRequest);
            EndRequest += new EventHandler(OnEndRequest);
        }
        protected void Application_Start(Object sender, EventArgs e)
        {
            HttpContext.Current.Items.Add("ar.sessionscope", new SessionScope());
        }
        public void OnBeginRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Items.Add("ar.sessionscope", new SessionScope());
        }
        public void OnEndRequest(object sender, EventArgs e)
        {
            try
            {
                SessionScope scope = HttpContext.Current.Items["ar.sessionscope"] as SessionScope;
                if (scope != null)
                {
                    scope.Dispose();
                }
            }
            catch (Exception ex)
            {
                HttpContext.Current.Trace.Warn("Error", "EndRequest:" + ex.Message, ex);
            }
        }
    }
}