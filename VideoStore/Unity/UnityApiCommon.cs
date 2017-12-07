using System.Collections.Generic;
using System.Reflection;
using System.Web;
using Unity;
using Unity.Injection;
using Unity.Lifetime;
using VideoStore.Areas.HelpPage.Controllers;
using VideoStore.Common.DataAccess;
using VideoStore.Common.DataAccess.Interfaces;
using VideoStore.Common.Unity;
using VideoStore.Core.Repositories;
using VideoStore.Core.Services;

namespace VideoStore.Unity
{
    public static class UnityApiCommon
    {
        public static IUnityContainer GetUnityContainer()
        {
            var helper = new UnityHelper(GetAssembliesToLoad());
            var container = helper.Container;

            container.RegisterType<IUnitOfWork, UnitOfWork>(new PerHttpRequestLifetime());
            container.RegisterType<HttpContextBase, HttpContextWrapper>();
            container.RegisterType<HttpContext>(new InjectionFactory(c => HttpContext.Current));
            container = helper.BuildUnityContainer();
            return container;
        }

        internal static List<Assembly> GetAssembliesToLoad()
        {
            List<Assembly> assembliesToLoad = new List<Assembly>();

            assembliesToLoad.Add(typeof(EntityBase).Assembly);
            assembliesToLoad.Add(typeof(LookupService).Assembly);
            assembliesToLoad.Add(Assembly.GetExecutingAssembly());

            return assembliesToLoad;
        }
    }
}