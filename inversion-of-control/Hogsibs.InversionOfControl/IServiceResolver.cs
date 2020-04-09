namespace Hogsibs.InversionOfControl
{
    public interface IServiceResolver
    {
        TService Resolve<TService>();
    }
}
