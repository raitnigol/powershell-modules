function Käibemaksuga
{
    param([int]$summa)

    if ($summa -lt 1) {
        Write-Warning "Palun sisesta arv, mis oleks suurem kui 0!"
        Start-Sleep -s 1 }

    else {
        $arvuta = $summa / 1.2
        $käibemaks = $summa - $arvuta
        Write-Host "Hinnast $summa € on käibemaks $käibemaks €" }
}



function Käibemaksuta
{
    param([int]$summa)

    if ($summa -lt 1) {
        Write-Warning "Palun sisesta arv, mis oleks suurem kui 0!"
        Start-Sleep -s 1 }

    else {
        $käibemaks = $summa * 0.2
        $hindkmga = $summa + $käibemaks
        Write-Host "Hinnale $summa € lisandub käibemaks $käibemaks €"
        Write-Warning "Hind koos käibemaksuga: $hindkmga €" }
}
