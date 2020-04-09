namespace Hogsibs.InversionOfControl.Registration
{
    interface IServiceFactory<out TService>
    {
        TService Create();
    }
}
