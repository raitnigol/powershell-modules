
# kolmnurga valemid

function Kolmnurk-Pindala {

    [int]$a = Read-Host "Palun sisesta kolmnurga alus A (cm)"
    [int]$h = Read-Host "Palun sisesta kolmnurga kõrgus H (cm)"

    $mootuhik = "cm"

    $S = (($a * $h) / 2)
    if ($S -gt 100)
    {

        $mootuhik = "m"
        $S = [math]::Round($S,4) / 1000

    }

    echo ""
    echo "Kolmnurga pindala (S = $a*$h/2): $S $mootuhik"

}



function Kolmnurk-Ümbermõõt {

    [int]$a = Read-Host "Palun sisesta kolmnurga külg A (cm)"
    [int]$b = Read-Host "Palun sisesta kolmnurga külg B (cm)"
    [int]$c = Read-Host "Palun sisesta kolmnurga külg B (cm)"

    $mootuhik = "cm"

    $P = (($a + $b) + $c)
    if ($P -gt 100)
    {

        $mootuhik = "m"
        $P = [math]::Round($P,4) / 1000

    }

    echo ""
    echo "Kolmnurga ümbermõõt (P = $a + $b + $c): $P $mootuhik"

}



function Kolmnurk-Ümbermõõt {

    [int]$a = Read-Host "Palun sisesta kolmnurga külg A (cm)"
    [int]$b = Read-Host "Palun sisesta kolmnurga külg B (cm)"
    [int]$c = Read-Host "Palun sisesta kolmnurga külg B (cm)"

    $mootuhik = "cm"

    $P = (($a + $b) + $c)
    if ($P -gt 100)
    {

        $mootuhik = "m"
        $P = [math]::Round($P,4) / 1000

    }

    echo ""
    echo "Kolmnurga ümbermõõt (P = $a + $b + $c): $P $mootuhik"

}



function Kolmnurk-Pythagoras {

    $mootuhik = "cm2"

    Write-Host "[1] Hüpotenuusi leidmine kaatetite kaudu `n[2] Kaateti leidmine hüpotenuusi ja teise kaateti kaudu"
    $valik = Read-Host -Prompt "Tee oma valik sisestades 1 või 2"

    if ($valik -eq "1")
    {

        [int]$a = Read-Host "Palun sisesta kolmnurga kaatet A (cm)"
        [int]$b = Read-Host "Palun sisesta kolmnurga kaatet B (cm)"


        $asqr = [math]::Pow($a, 2)
        $bsqr = [math]::Pow($b, 2)

        $xsqr = ($asqr + $bsqr)
        $x = [math]::Sqrt($xsqr)

        if ($x -gt 100)
        {

            $mootuhik = "m2"
            $x = [math]::Round($x,4) / 1000

        }


        echo ""
        echo "Hüpotenuus C: $x $mootuhik"
    }

    if ($valik -eq "2")
    {

        [double]$b = Read-Host "Palun sisesta kolmnurga kaatet B (cm)"
        [double]$c = Read-Host "Palun sisesta kolmnurga hüpotenuus C (cm)"

        $bsqr = [math]::Pow($b,2)
        $csqr = [math]::Pow($c,2)

        $xsqr = ($csqr - $bsqr)
        $x = [math]::Sqrt($xsqr)

        if ($x -gt 100)
        {

            $mootuhik = "m2"
            $x = [math]::Round($x,4) / 1000

        }

        echo ""
        echo "Kaatet A: $x $mootuhik"

    }

}
