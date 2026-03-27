param(
    [string]$DnsServer = "10.20.10.10",
    [string]$ForwardZone = "lab.local"
)

$reverseZones = @(
    "10.20.10.in-addr.arpa",
    "10.20.20.in-addr.arpa",
    "10.20.30.in-addr.arpa",
    "10.20.50.in-addr.arpa",
    "10.20.100.in-addr.arpa",
    "10.20.200.in-addr.arpa",
    "10.20.300.in-addr.arpa"
)

if (-not (Get-DnsServerZone -ComputerName $DnsServer -Name $ForwardZone -ErrorAction SilentlyContinue)) {
    Add-DnsServerPrimaryZone -ComputerName $DnsServer -Name $ForwardZone -ReplicationScope "Forest"
}

foreach ($zone in $reverseZones) {
    if (-not (Get-DnsServerZone -ComputerName $DnsServer -Name $zone -ErrorAction SilentlyContinue)) {
        Add-DnsServerPrimaryZone -ComputerName $DnsServer -NetworkId $zone -ReplicationScope "Forest"
    }
}

Write-Host "Zones DNS vérifiées."
