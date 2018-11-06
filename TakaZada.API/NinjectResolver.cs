using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http.Dependencies;
using TakaZada.API.Admin;
using TakaZada.API.Computer;

namespace TakaZada.API
{
    /// <summary>
    /// Class to resolve dependency inversion
    /// </summary>
    public class NinjectResolver : IDependencyResolver, System.Web.Mvc.IDependencyResolver
    {
        private IKernel _kernel;
        public NinjectResolver(IKernel kernel)
        {
            this._kernel = kernel;
        }
        public NinjectResolver() : this(new StandardKernel())
        {
            // Inject dependencies
            _kernel.Bind<ILogin>().To<AdminService>().InSingletonScope();
            _kernel.Bind<ILoad>().To<ComputerService>().InSingletonScope();
        }
        public IDependencyScope BeginScope()
        {
            throw new NotImplementedException();
        }

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public object GetService(Type serviceType)
        {
            return _kernel.TryGet(serviceType);
        }

        public IEnumerable<object> GetServices(Type serviceType)
        {
            return _kernel.GetAll(serviceType);
        }
    }
}
