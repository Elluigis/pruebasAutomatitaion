***Settings**
Library     SeleniumLibrary
Resource     Recursos.robot

***Test Case***
001 Prueba YouTube
    Set Selenium Speed      0.3
    Open Browser    https://www.youtube.com/    chrome
    Set Window Size     1200     900
    Wait Until Element Is Visible   css=#logo-icon
    Input Text      css=#search-input > input     Comfortably Numb
    Click Element   css=#search-icon-legacy
    Wait Until Element Is Visible   css=#container > ytd-toggle-button-renderer > a > tp-yt-paper-button
    Title Should Be     Comfortably Numb - YouTube
    Click Element   css=#video-title > yt-formatted-string
