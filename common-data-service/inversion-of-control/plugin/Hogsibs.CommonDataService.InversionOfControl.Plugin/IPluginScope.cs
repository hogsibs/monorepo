using System;

namespace Hogsibs.CommonDataService.InversionOfControl.Plugin
{
    public interface IPluginScope : IPluginExecution, IDisposable
    {
    }
}