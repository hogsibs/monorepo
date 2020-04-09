namespace Hogsibs.Deopinionated.InversionOfControl
{
    public interface IContainer<TOpinionatedContainer> : Hogsibs.InversionOfControl.IContainer, IDeopinionated<TOpinionatedContainer>
    {
    }
}
