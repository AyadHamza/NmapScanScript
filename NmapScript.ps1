$path = "C:\Powershelldemo1\NmapScan\.xml"

[xml]$nmapScan = Get-Content -Path $path

$scanInfo = $nmapScan.nmaprun.host

foreach($info in $scanInfo){
    if($info.status.state -eq "Up"){
        $status = $info.status.state
    }
    $hostname = if($info.hostnames.hostname.name -gt 0) {$info.hostnames.hostname.name} else {"N/A"}
    $address = $info.address.addr
    $os = if($info.os.osmatch.name -gt 0){$info.os.osmatc.name} else {"N/A"}


    write-output "Status: $status"
    write-output "Hostname: $hostname"
    write-output "Address: $address"
    write-output "OS: $os"
    write-output "----------------------------"

}


