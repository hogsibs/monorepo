using Hogsibs.InversionOfControl;
using System;

namespace Hogsibs.CommonDataService.InversionOfControl
{
    interface IPluginExecution
    {
        IContainer Begin(IServiceProvider pluginServices);
    }
}
