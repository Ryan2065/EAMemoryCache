
Push-Location $PSScriptRoot\EAMemoryCache

$ErrorActionPreference = "Stop"

dotnet publish --self-contained false --configuration release --framework net472 
dotnet publish --self-contained false --configuration release --framework net6.0  

Get-ChildItem -Path $PSScriptRoot\Module\Dependencies -File -Recurse | ForEach-Object {
    Remove-Item $_.FullName -Force
}

$Net47PublishFolder = [System.IO.Path]::Combine($PSScriptRoot, 'EAMemoryCache','EAMemoryCache', 'bin', 'Release', 'net472', 'publish')
$Net6PublishFolder = [System.IO.Path]::Combine($PSScriptRoot, 'EAMemoryCache','EAMemoryCache', 'bin', 'Release', 'net6.0', 'publish')
$null = Copy-Item -Path "$Net47PublishFolder\*" -Destination "$($PSScriptRoot)\Module\Dependencies\net472\"  -Force -Recurse
$null = Copy-Item -Path "$Net6PublishFolder\*" -Destination "$($PSScriptRoot)\Module\Dependencies\net6.0\"  -Force -Recurse

Import-Module "$PSScriptRoot\Module\EAMemoryCache.psm1"

Import-Module platyps

$parameters = @{
    Path = "$PSScriptRoot\docs"
    RefreshModulePage = $true
    AlphabeticParamsOrder = $true
    UpdateInputOutput = $true
    ExcludeDontShow = $true
    LogPath = "$PSScriptRoot\bin\platylogs.log"
    Encoding = [System.Text.Encoding]::UTF8
}
Update-MarkdownHelpModule @parameters

New-ExternalHelp -Path "$PSScriptRoot\docs" -OutputPath $PSScriptRoot\Module\en-us -Force