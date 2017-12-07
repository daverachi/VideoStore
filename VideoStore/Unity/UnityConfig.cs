using System.Web.Http;
using System.Web.Mvc;

namespace VideoStore.Unity
{
    public class UnityConfig
    {
        public static void RegisterComponents()
        {
            var container = UnityApiCommon.GetUnityContainer();
            GlobalConfiguration.Configuration.DependencyResolver = new UnityDependencyResolver(container);
        }
    }
}