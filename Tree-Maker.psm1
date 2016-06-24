$moduleRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

"$moduleRoot\Functions\*.ps1" | Resolve-Path |
    ? {!($_.ProviderPath.ToLower().Contains(".tests."))} |
    % {. $_.ProviderPath}

Export-ModuleMember -function "Get-PrettyTree"
Export-ModuleMember -function "Get-TreeAssigner"
Export-ModuleMember -function "Get-TreeBuilder"