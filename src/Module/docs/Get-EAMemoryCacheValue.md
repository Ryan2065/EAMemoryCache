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
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Action
{{ Fill Action Description }}

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
{{ Fill ActiveFor Description }}

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
{{ Fill Arguments Description }}

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
{{ Fill Key Description }}

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
