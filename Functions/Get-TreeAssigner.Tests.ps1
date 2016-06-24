InModuleScope Tree-Maker {
    Describe "the Get-TreeAssigner function" {
        $UserName = "John"

        It "assignes to depth one" {
            $Config = @{User = @{}}
            & (Get-TreeAssigner "Config" "User.Name") $UserName
            $Config.User.Name | Should Be $UserName
        }
        It "assignes to depth two" {
            $System = @{Config = @{User = @{}}}
            & (Get-TreeAssigner "System" "Config.User.Name") $UserName
            $System.Config.User.Name | Should Be $UserName
        }
    }
}