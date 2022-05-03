---
Module Name: EAMemoryCache
Module Guid: 6a21f6c0-57d3-451e-bb0f-4272105e175b
Download Help Link: 
Help Version: 1.0
Locale: en-US
---

# EAMemoryCache Module
## Description
Provides a PowerShell interface to the .Net Core implementation of IMemoryCache

## EAMemoryCache Cmdlets
### [Get-EAMemoryCacheValue](Get-EAMemoryCacheValue.md)
Retrieves a value from the cache. If the cache does not have the value, it executes the provided action to get it and puts the value in the cache for the length of time provided.

### [Remove-EAMemoryCacheValue](Remove-EAMemoryCacheValue.md)
Will remove a cache value - useful if we know the data was updated and want to refresh it rather than using cached data.

