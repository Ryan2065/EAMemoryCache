---
external help file: EAMemoryCache.dll-Help.xml
Module Name: EAMemoryCache
online version:
schema: 2.0.0
---

# Remove-EAMemoryCacheValue

## SYNOPSIS
Will remove a cache value - useful if we know the data was updated and want to refresh it rather than using cached data.

## SYNTAX

```
Remove-EAMemoryCacheValue -Key <String> [<CommonParameters>]
```

## DESCRIPTION
Calls the IMemoryCache method .CreateEntry which will overwrite the existing value, making it null and be retrieved next time it is requested

## EXAMPLES

### Example 1
```powershell
PS C:\> Remove-EAMemoryCacheValue -Key 'MyKey
```

If the cache has data stored under key MyKey, the data will be removed. Next time MyKey is requested, the action will be run.

## PARAMETERS

### -Key
The key we want to null out in the cache

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
