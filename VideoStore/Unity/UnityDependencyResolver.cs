using System;
using System.Collections.Generic;
using System.Web.Http.Controllers;
using System.Web.Http.Dependencies;
using Unity;

namespace VideoStore.Unity
{
    public class UnityDependencyResolver : System.Web.Http.Dependencies.IDependencyResolver
    {
        private readonly IUnityContainer _container;

        public UnityDependencyResolver(IUnityContainer container)
        {
            _container = container;
        }

        public object GetService(Type serviceType)
        {
            if (typeof(IHttpController).IsAssignableFrom(serviceType))
            {
                return _container.Resolve(serviceType);
            }

            return IsRegistered(serviceType) ? _container.Resolve(serviceType) : null;
        }

        public IEnumerable<object> GetServices(Type serviceType)
        {
            if (IsRegistered(serviceType))
            {
                yield return _container.Resolve(serviceType);
            }

            foreach (var service in _container.ResolveAll(serviceType))
            {
                yield return service;
            }
        }

        private bool IsRegistered(Type serviceType)
        {
            bool isRegistered = true;

            if (serviceType.IsInterface || serviceType.IsAbstract)
            {
                isRegistered = _container.IsRegistered(serviceType);

                if (!isRegistered && serviceType.IsGenericType)
                {
                    var openGenericType = serviceType.GetGenericTypeDefinition();

                    isRegistered = _container.IsRegistered(openGenericType);
                }
            }

            return isRegistered;
        }

        public IDependencyScope BeginScope()
        {
            var child = _container.CreateChildContainer();
            return new UnityDependencyResolver(child);
        }

        public void Dispose()
        {
            _container.Dispose();
        }
    }
}