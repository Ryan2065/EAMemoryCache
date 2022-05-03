if($PSVersionTable.PSVersion.Major -gt 5){
    
    Import-Module "$PSScriptRoot\Dependencies\net6.0\EAMemoryCache.dll" -ErrorAction SilentlyContinue
}
else{
    Import-Module "$PSScriptRoot\Dependencies\net472\EAMemoryCache.dll"
}

[EAMemoryCache.CacheInteraction]::Initialize()

Export-ModuleMember -Cmdlet 'Get-EAMemoryCacheValue'