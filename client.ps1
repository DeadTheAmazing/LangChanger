$version = "0.0.1"


## --------------------------------------------------------------------
function init{
    Write-Host "┌──────────────────────────┐"
    Write-Host " Language Swapper v"$version
    Write-Host "   Created by: @Cysiulek    "
    Write-Host "└──────────────────────────┘"
    Write-Host ""
    Write-Host ""
    Write-Host "─────────────────────────────────"
    if($global:langchoice -ieq "DE"){
        Write-Host "  LANG: German/Deutsch"
    }else {
        if($global:langchoice -ieq "EN"){
        Write-Host "  LANG: English/Englisch"
        }else{
        Write-Host "Choosing a language"
        }
    }
    Write-Host "─────────────────────────────────"
    $global:langchoice = Read-Host "DE oder/or EN"
    if($langchoice -ieq "DE" -or $langchoice -ieq "EN"){
        changelang
    }else{
        Write-Host "not a valid language choice"
    }
    Clear-Host
    init
}
Function changelang{
    if($global:langchoice -ieq "DE"){
        Set-WinUserLanguageList -LanguageList DE-DE
        Write-Host "LANG: DE-DE"
        return
    }
    if($global:langchoice -ieq "EN"){
        Set-WinUserLanguageList -LanguageList EN-US
        Write-Host "LANG: EN-US"
        return
    }
    Write-Host "Error??"
    return
}
## --------------------------------------------------------------------
init