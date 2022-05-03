---
external help file: EAMemoryCache.dll-Help.xml
Module Name: EAMemoryCache
online version:
schema: 2.0.0
---

# Get-EAMemoryCacheValue

## SYNOPSIS
Retrieves a value from the cache. If the cache does not have the value, it executes the provided action to get it and puts the value in the cache for the length of time provided.

## SYNTAX

```
Get-EAMemoryCacheValue -Key <String> -ActiveFor <TimeSpan> -Action <ScriptBlock> [-Arguments <Object[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Uses the .Net Core IMemoryCache provider to bring caching to PowerShell

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-EAMemoryCacheValue -Key 'MyKey' -ActiveFor (  New-TimeSpan -Minutes 2 ) -Action {
    Get-MyValueFromSQL
}
```

On first call, this will run the Action command and store the results. If the key MyKey is asked for again before 2 minutes is up, it will return the cached data instead of doing another hit to SQL. If it's after 2 minutes, it will refresh the data before sending it back.

## PARAMETERS

### -Action
ScriptBlock action that will return the results we want cached.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ActiveFor
TimeSpan to say how long the cache should be active for

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Array of arguments to send to the script block if required

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Key
The unique key to use in the cache.

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
