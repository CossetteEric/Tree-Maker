function Get-TreeAssigner {
    Param(
        [string]$HashtableName,
        [string]$Path
    )

    [scriptblock]::Create("Param(`$Value) `$$HashtableName.$Path = `$Value")
}