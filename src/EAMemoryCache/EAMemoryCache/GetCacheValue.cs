using Microsoft.Extensions.Caching.Memory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using System.Text;
using System.Threading.Tasks;

namespace EAMemoryCache
{
    [Cmdlet(VerbsCommon.Get, "EAMemoryCacheValue")]
    [OutputType(typeof(object))]
    public class GetCacheValue : PSCmdlet
    {
        [Parameter(Mandatory = true, ParameterSetName = "TryGet")]
        [ValidateNotNullOrEmpty()]
        public string Key { get; set; }

        [Parameter(Mandatory = true, ParameterSetName = "TryGet")]
        [ValidateNotNullOrEmpty()]
        public TimeSpan ActiveFor { get; set; }

        [Parameter(Mandatory = true, ParameterSetName = "TryGet")]
        [ValidateNotNull()]
        public ScriptBlock Action { get; set; }

        [Parameter(Mandatory = false, ParameterSetName = "TryGet")]
        public object[] Arguments { get; set; }

        protected override void EndProcessing()
        {
            if(!CacheInteraction.EACache.TryGetValue(Key, out object cacheValue))
            {
                List<object> cacheValueList = new List<object>();
                var scriptResults = SessionState.InvokeCommand.InvokeScript(Action.ToString(), Arguments);
                foreach(var r in scriptResults)
                {
                    cacheValueList.Add(r.BaseObject);
                }
                cacheValue = cacheValueList.ToArray();
                var cacheEntryOptions = new MemoryCacheEntryOptions().SetSlidingExpiration(ActiveFor);
                CacheInteraction.EACache.Set(Key, cacheValue, cacheEntryOptions);
            }
            
            WriteObject(cacheValue);
        }

    }
}
