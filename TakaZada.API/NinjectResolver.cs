using Ninject;
using System;
using System.Collections.Generic;
using System.Web.Http.Dependencies;
using TakaZada.API.Admin;
using TakaZada.API.Cart;
using TakaZada.API.Case;
using TakaZada.API.Computer;
using TakaZada.API.CPU;
using TakaZada.API.Handle;
using TakaZada.API.Hardware;
using TakaZada.API.Keyboard;
using TakaZada.API.Mainboard;
using TakaZada.API.News;
using TakaZada.API.Radiator;
using TakaZada.API.RAM;
using TakaZada.API.VGA;

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
            // admin
            _kernel.Bind<ILoad>().To<ComputerService>().InSingletonScope();
            //computer
            _kernel.Bind<IComputerReponsitory>().To<ComputerService>().InSingletonScope();
            //case
            _kernel.Bind<ILoadCase>().To<CaseService>().InSingletonScope();
            _kernel.Bind<ICaseReponsitory>().To<CaseService>().InSingletonScope();
            // CPU
            _kernel.Bind<ILoadCPU>().To<CPUService>().InSingletonScope();
            _kernel.Bind<ICPUReponsitory>().To<CPUService>().InSingletonScope();
            // Hardware
            _kernel.Bind<ILoadHardware>().To<HardwareService>().InSingletonScope();
            _kernel.Bind<IHardwareReponsitiry>().To<HardwareService>().InSingletonScope();
            // Keyboard
            _kernel.Bind<IKeyboardLoad>().To<KeyboardService>().InSingletonScope();
            _kernel.Bind<IKeyboardReponsitory>().To<KeyboardService>().InSingletonScope();
            // Mainboard
            _kernel.Bind<IMainboardLoad>().To<MainboardService>().InSingletonScope();
            _kernel.Bind<IMainboardReponsitory>().To<MainboardService>().InSingletonScope();
            // Radiator
            _kernel.Bind<IRadiatorLoad>().To<RadiatorService>().InSingletonScope();
            _kernel.Bind<IRadiatorReponsitory>().To<RadiatorService>().InSingletonScope();
            // RAM
            _kernel.Bind<IRAMLoad>().To<RAMService>().InSingletonScope();
            _kernel.Bind<IRAMRepository>().To<RAMService>().InSingletonScope();
            // VGA
            _kernel.Bind<IVGALoad>().To<VGAService>().InSingletonScope();
            _kernel.Bind<IVGAReponsitory>().To<VGAService>().InSingletonScope();

            _kernel.Bind<ILog>().To<AdminService>().InSingletonScope();
            _kernel.Bind<IUser>().To<AdminService>().InSingletonScope();

            _kernel.Bind<ILoadCart>().To<CartService>().InSingletonScope();
            _kernel.Bind<ICartRepository>().To<CartService>().InSingletonScope();

            _kernel.Bind<ILoadNew>().To<NewService>().InSingletonScope();
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
