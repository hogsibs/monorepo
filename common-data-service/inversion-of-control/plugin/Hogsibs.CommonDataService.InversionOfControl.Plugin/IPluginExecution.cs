using Hogsibs.CommonDataService.InversionOfControl.Core;
using System;

namespace Hogsibs.CommonDataService.InversionOfControl.Plugin
{
    public interface IPluginExecution
    {
        IExecutionScope Begin(IServiceProvider serviceProvider);
    }
}
