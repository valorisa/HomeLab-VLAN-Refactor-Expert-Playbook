param(
    [string]$DhcpServer = "10.20.10.10"
)

$scopes = @(
    @{Name="VLAN10"; ScopeId="10.20.10.0"; StartRange="10.20.10.50"; EndRange="10.20.10.199"; SubnetMask="255.255.255.0"; Router="10.20.10.254"; Dns="10.20.10.10"; Domain="lab.local"},
    @{Name="VLAN20"; ScopeId="10.20.20.0"; StartRange="10.20.20.10"; EndRange="10.20.20.120"; SubnetMask="255.255.255.0"; Router="10.20.20.254"; Dns="10.20.10.10"; Domain="lab.local"},
    @{Name="VLAN30"; ScopeId="10.20.30.0"; StartRange="10.20.30.100"; EndRange="10.20.30.230"; SubnetMask="255.255.255.0"; Router="10.20.30.254"; Dns="10.20.10.10"; Domain="lab.local"},
    @{Name="VLAN50"; ScopeId="10.20.50.0"; StartRange="10.20.50.30"; EndRange="10.20.50.230"; SubnetMask="255.255.255.0"; Router="10.20.50.254"; Dns="10.20.10.10"; Domain="lab.local"},
    @{Name="VLAN100"; ScopeId="10.20.100.0"; StartRange="10.20.100.50"; EndRange="10.20.100.250"; SubnetMask="255.255.255.0"; Router="10.20.100.254"; Dns="1.1.1.1"; Domain="guest.local"},
    @{Name="VLAN200"; ScopeId="10.20.200.0"; StartRange="10.20.200.10"; EndRange="10.20.200.40"; SubnetMask="255.255.255.0"; Router="10.20.200.254"; Dns="10.20.10.10"; Domain="lab.local"},
    @{Name="VLAN300"; ScopeId="10.20.300.0"; StartRange="10.20.300.20"; EndRange="10.20.300.120"; SubnetMask="255.255.255.0"; Router="10.20.300.254"; Dns="10.20.10.10"; Domain="lab.local"}
)

foreach ($scope in $scopes) {
    if (-not (Get-DhcpServerv4Scope -ComputerName $DhcpServer -ScopeId $scope.ScopeId -ErrorAction SilentlyContinue)) {
        Add-DhcpServerv4Scope -ComputerName $DhcpServer `
            -Name $scope.Name `
            -StartRange $scope.StartRange `
            -EndRange $scope.EndRange `
            -SubnetMask $scope.SubnetMask `
            -State Active
        Set-DhcpServerv4OptionValue -ComputerName $DhcpServer -ScopeId $scope.ScopeId -Router $scope.Router
        Set-DhcpServerv4OptionValue -ComputerName $DhcpServer -ScopeId $scope.ScopeId -DnsServer $scope.Dns -DnsDomain $scope.Domain
        Write-Host "Scope $($scope.Name) créé."
    } else {
        Write-Host "Scope $($scope.Name) déjà présent."
    }
}
