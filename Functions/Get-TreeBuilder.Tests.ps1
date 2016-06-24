InModuleScope Tree-Maker {
    Describe "the Get-TreeBuilder function" {
        It "adds depth one" {
            $User = @{}
            & (Get-TreeBuilder "User" "Name")
            $User.Keys.Count | Should Be 0
        }
        It "adds depth two" {
            $Config = @{}
            & (Get-TreeBuilder "Config" "User.Name")
            $Config.User -is [hashtable] | Should Be $true
        }
        It "adds depth three" {
            $System = @{}
            & (Get-TreeBuilder "System" "Config.User.Name")
            $System.Config.User -is [hashtable] | Should Be $true
        }
    }
}