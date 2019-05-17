


# maksuameti tulud

function Maksuamet {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $tootuskindlustusmakse = $brutopalk * 0.016
        $kogumispension = $brutopalk * 0.020
        $tootuskindlustusmakse_tooandja = $brutopalk * 0.008

        if($brutopalk -le 1200) {
            $tulumaksuvabatulu = 500
        }

        elseif(($brutopalk -ge 1201) -and ($brutopalk -le 2100)) {
            $5jagatud9 = (5 / 9)
            $tulu = (2100 - $brutopalk)
            $tulumaks = ($5jagatud9 * $tulu)
            $tulumaksuvabatulu = [math]::Round($tulumaks,3)
        }

        elseif($brutopalk -ge 2101) {
            $tulumaksuvabatulu = 0
        }

        $sotsiaalmaks = $brutopalk * 0.33
        $tulumaksuvabatulu = (((($brutopalk - $tootuskindlustusmakse) - $kogumispension) - $tulumaksuvabatulu) * 0.2)
        $maksud = (((($tulumaksuvabatulu + $kogumispension) + $tootuskindlustusmakse) + $sotsiaalmaks) + $tootuskindlustusmakse_tooandja)
        Write-Host "Töötasust $brutopalk € teenib maksuamet $maksud €"

        Write-Host ""
        Write-Host "Tulumaksuvaba tulu = $tulumaksuvabatulu €"
        Write-Host "Töötuskindlustusmakse (töövõtja) = $tootuskindlustusmakse €"
        Write-Host "Töötuskindlustusmakse (tööandja) = $tootuskindlustusmakse_tooandja €"
        Write-Host "Kogumispension = $kogumispension €"
        Write-Host "Sotsiaalmaks = $sotsiaalmaks €"
    }

}

# palga funktsioonid

function Netopalk {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $tootuskindlustusmakse = $brutopalk * 0.016
        $kogumispension = $brutopalk * 0.020

        if($brutopalk -le 1200) {
            $tulumaksuvabatulu = 500
        }

        elseif(($brutopalk -ge 1201) -and ($brutopalk -le 2100)) {
            $5jagatud9 = (5 / 9)
            $tulu = (2100 - $brutopalk)
            $tulumaks = ($5jagatud9 * $tulu)
            $tulumaksuvabatulu = [math]::Round($tulumaks,3)
        }

        elseif($brutopalk -ge 2101) {
            $tulumaksuvabatulu = 0
        }

        $tulumaksuvabatulu = (((($brutopalk - $tootuskindlustusmakse) - $kogumispension) - $tulumaksuvabatulu) * 0.2)
        $netopalk = ((($brutopalk - $tulumaksuvabatulu) - $kogumispension) - $tootuskindlustusmakse)
        Write-Host "Töötasust $brutopalk € on netopalk $netopalk €"

        Write-Host ""
        Write-Host "Tulumaksuvaba tulu = $tulumaksuvabatulu €"
        Write-Host "Töötuskindlustusmakse = $tootuskindlustusmakse €"
        Write-Host "Kogumispension = $kogumispension €"
    }

}

# käibemaksu funktsioonid [1, 2]

function Käibemaksuga
{
    param([int]$summa)

    if ($summa -lt 1) {
        Write-Warning "Palun sisesta arv, mis oleks suurem kui 0!"
        Start-Sleep -s 1
        }

    else {
        $arvuta = $summa / 1.2
        $käibemaks = $summa - $arvuta
        Write-Host "Hinnast $summa € on käibemaks $käibemaks €"
        }

}



function Käibemaksuta
{
    param([int]$summa)

    if ($summa -lt 1) {
        Write-Warning "Palun sisesta arv, mis oleks suurem kui 0!"
        Start-Sleep -s 1
        }

    else {
        $käibemaks = $summa * 0.2
        $hindkmga = $summa + $käibemaks
        Write-Host "Hinnale $summa € lisandub käibemaks $käibemaks €"
        Write-Host ""
        Write-Warning "Hind koos käibemaksuga: $hindkmga €"
        }

}

# üksikisiku ja tööandja maksud

function Töötuskindlustus
{
    param(
        [Parameter(Mandatory=$true, Position=0)]
        [string]$inimene,
        [Parameter(Mandatory=$true, Position=1)]
        [int]$brutopalk
        )

    if ($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    elseif ($inimene -eq "töövõtja") {
            $tootuskindlustusmakse = $brutopalk * 0.016
            Write-Host "${inimene}: Töötasust $brutopalk € on töötuskindlustusmakse $tootuskindlustusmakse €"
        }

    elseif ($inimene -eq "tööandja") {
            $tootuskindlustusmakse = $brutopalk * 0.008
            Write-Host "${inimene}: Töötasust $brutopalk € on töötuskindlustusmakse $tootuskindlustusmakse €"
        }

}




function Kogumispension {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $kogumispension = $brutopalk * 0.2
        Write-Host "Töötasust $brutopalk € on kogumispension $kogumispension €"
        }

}




function Tulumaks {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $tootuskindlustusmakse = $brutopalk * 0.016
        $kogumispension = $brutopalk * 0.020

        if($brutopalk -le 1200) {
            $tulumaksuvabatulu = 500
        }

        elseif(($brutopalk -ge 1201) -and ($brutopalk -le 2100)) {
            $5jagatud9 = (5 / 9)
            $tulu = (2100 - $brutopalk)
            $tulumaks = ($5jagatud9 * $tulu)
            $tulumaksuvabatulu = [math]::Round($tulumaks,3)
        }

        elseif($brutopalk -ge 2101) {
            $tulumaksuvabatulu = 0
        }

        $tuludemaks = (((($brutopalk - $tootuskindlustusmakse) - $kogumispension) - $tulumaksuvabatulu) * 0.2)
        Write-Host "Töötasust $brutopalk € on tulumaks $tuludemaks €"

        Write-Host ""
        Write-Host "Tulumaksuvaba tulu = $tulumaksuvabatulu €"
        Write-Host "Töötuskindlustusmakse = $tootuskindlustusmakse €"
        Write-Host "Kogumispension = $kogumispension €"
    }

}



function Sotsiaalmaks {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $sotsiaalmaks = $brutopalk * 0.33
        Write-Host "Töötasust $brutopalk € on sotsiaalmaks $sotsiaalmaks €"

    }

}



function Palgafond {
    param([int]$brutopalk)

    if($brutopalk -lt 540) {
        Write-Warning "2019. aasta seisuga on töötasu alammäär 540 eurot. Sisesta kõrgem palganumber!"
        Start-Sleep -s 1
        }

    else {
        $tootuskindlustusmakse = $brutopalk * 0.008
        $sotsiaalmaks = $brutopalk * 0.33
        $palgafond = (($brutopalk + $tootuskindlustusmakse) + $sotsiaalmaks)
        Write-Host "Töötasu $brutopalk € puhul on palgafond $palgafond €"

        Write-Host ""
        Write-Host "Töötuskindlustusmakse = $tootuskindlustusmakse €"
        Write-Host "Sotsiaalmaks = $sotsiaalmaks €"
        }

}
