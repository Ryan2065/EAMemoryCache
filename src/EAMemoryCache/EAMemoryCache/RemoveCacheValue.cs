using Microsoft.Extensions.Caching.Memory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Text;
using System.Threading.Tasks;

namespace EAMemoryCache
{
    [Cmdlet(VerbsCommon.Remove, "EAMemoryCacheValue")]
    [OutputType(typeof(object))]
    public class RemoveCacheValue : PSCmdlet
    {
        [Parameter(Mandatory = true)]
        [ValidateNotNullOrEmpty()]
        public string Key { get; set; }

        protected override void EndProcessing()
        {
            CacheInteraction.EACache.CreateEntry(Key);
        }
    }
}
