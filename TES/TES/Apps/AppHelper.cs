using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Apps
{
    public class AppHelper
    {
        //使用MD5加密传入的字符
        public static string EncodeMd5(string str)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "md5");
        }
        //保存登录用户的信息
        public static User LoginedUser
        {
            get
            {
                if (HttpContext.Current.Session["LoginedUser"] != null)
                {
                    return HttpContext.Current.Session["LoginedUser"] as User;
                }
                return null;
            }
            set
            {
                HttpContext.Current.Session["LoginedUser"] = value;
            }
        }

        //保存选择教师的信息
        public static Teacher GetTeacher
        {
            get
            {
                if (HttpContext.Current.Session["GetTeacher"] != null)
                {
                    return HttpContext.Current.Session["GetTeacher"] as Teacher;
                }
                return null;
            }
            set
            {
                HttpContext.Current.Session["GetTeacher"] = value;
            }
        }

        //获取主机地址
        public static string Host
        {
            get
            {
                return HttpContext.Current.Request.Url.AbsoluteUri;
            }
        }
        //保存当前登录用户的菜单权限
        public static IList<SystemFunction> Privileges
        {
            get
            {
                IList<SystemFunction> privileges = Container.Instance.Resolve<ISystemFunctionService>().GetAll();
                if (privileges == null)
                {
                    return privileges;
                }
                IList<SystemFunction> privilegeList = null;//声明一个集合变量
                if (LoginedUser != null && LoginedUser.Roles != null)//如果有用户登录并且有对应的角色
                {
                    foreach (Role role in LoginedUser.Roles)//遍历当前用户的角色
                    {
                        foreach (SystemFunction function in role.SystemFunctions)//获取当前用户可以操作的功能
                        {
                            if (privilegeList == null)
                            {
                                privilegeList = new List<SystemFunction>();//实例化权限集合
                            }
                            if (privilegeList.Where(o => o.ID == function.ID).Count() < 1)//如果当前功能在权限集合中不存在
                            {
                                privilegeList.Add(function);//添加到集合中
                            }
                        }
                    }
                }
                return privilegeList;
            }
        }

    }
    }
