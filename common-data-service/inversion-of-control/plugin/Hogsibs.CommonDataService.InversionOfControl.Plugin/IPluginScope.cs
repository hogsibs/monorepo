using System;
using Hogsibs.CommonDataService.InversionOfControl.Core;

namespace Hogsibs.CommonDataService.InversionOfControl.Plugin
{
    public interface IPluginScope : IDisposable
    {
        IExecutionScope BeginExecution(IServiceProvider serviceProvider);
    }
}