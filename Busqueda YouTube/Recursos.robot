***Settings***
Library     String
Library     SeleniumLibrary


***Variables***
${browser}      chrome
${homepage}     https://www.google.com/


***Keywords***
Open Homepage
    Open Browser    ${homepage}     ${browser}
    Wait Until Element Is Visible   css=body > div.L3eUgb > div.o3j99.LLD4me.yr19Zb.LS8OJ > div > img
    Set Window Size     1200    900

