namespace Hogsibs.InversionOfControl.Registration
{
    interface IFactoryRegistry
    {
        void Register<TService>(IServiceFactory<TService> serviceFactory);
    }
}
