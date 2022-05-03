Import-Module 'C:\Users\Ryan2\OneDrive\Code\EAMemoryCache\src\Module\EAMemoryCache.psd1' -Force

Get-EAMemoryCacheValue -Key 'TestKey' -ActiveFor ( New-TimeSpan -Seconds 2 ) -Action {
    Write-host 'Running action'
    1
}

Remove-EAMemoryCacheValue -Key 'TestKey'

Get-EAMemoryCacheValue -Key 'TestKey' -ActiveFor ( New-TimeSpan -Seconds 2 ) -Action {
    Write-host 'Running action'
    1
}

Get-EAMemoryCacheValue -Key 'TestKey' -ActiveFor ( New-TimeSpan -Seconds 2 ) -Action {
    Write-host 'Running action'
    1
}

Get-EAMemoryCacheValue -Key 'TestKey' -ActiveFor ( New-TimeSpan -Seconds 2 ) -Action {
    Write-host 'Running action'
    1
}

Start-Sleep 3

Get-EAMemoryCacheValue -Key 'TestKey' -ActiveFor ( New-TimeSpan -Seconds 2 ) -Action {
    Write-host 'Running action'
    1
}
