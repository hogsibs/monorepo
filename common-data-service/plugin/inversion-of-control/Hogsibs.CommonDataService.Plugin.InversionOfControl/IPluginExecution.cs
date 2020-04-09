using Hogsibs.InversionOfControl;
using System;

namespace Hogsibs.CommonDataService.Plugin.InversionOfControl
{
    interface IPluginExecution
    {
        IContainer Begin(IServiceProvider pluginServices);
    }
}
