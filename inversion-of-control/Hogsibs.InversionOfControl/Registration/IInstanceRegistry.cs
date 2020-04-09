namespace Hogsibs.InversionOfControl.Registration
{
    public interface IInstanceRegistry
    {
        void Register<TService>(TService instance) where TService : class;
    }
}
