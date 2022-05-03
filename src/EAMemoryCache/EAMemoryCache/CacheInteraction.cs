using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Reflection;

namespace EAMemoryCache
{
    public static class CacheInteraction
    {
        public static IMemoryCache EACache { get; set; }
        public static void ClearCache()
        {
            EACache.Dispose();
            EACache = null;
            Initialize();
        }
        private static ServiceProvider Provider { get; set; }
        public static void Initialize()
        {
            if(EACache != null)
            {
                EACache.Dispose();
            }
            if (Provider != null)
            {
                Provider.Dispose();
            }
            Provider = new ServiceCollection()
               .AddMemoryCache()
               .BuildServiceProvider();
            EACache = Provider.GetService<IMemoryCache>();
        }
    }
}
