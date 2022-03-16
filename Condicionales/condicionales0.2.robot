***Settings***
Library     SeleniumLibrary
Library     BuiltIn

***Variables***
${browser}      chrome
${homepage}     http://automationpractice.com/index.php
${seleccion}    Dresses

*** Keywords ***
Selecte Women Option
    Click Element   css=#block_top_menu > ul > li:nth-child(1) > a
    Title Should Be     Women - My Store

Selecte Dresses Option
    Click Element   css=#block_top_menu > ul > li:nth-child(2) > a
    Title Should Be     Dresses - My Store


*** Test Cases ***
001 Caso Con Condicionales
    Open Browser    ${homepage}     ${browser}
    Wait Until Element Is Visible   css=#header_logo > a > img
    BuiltIn.Run Keyword If     "${seleccion}"=="Women"     Selecte Women Option   ELSE     Selecte Dresses Option
    Close Browser