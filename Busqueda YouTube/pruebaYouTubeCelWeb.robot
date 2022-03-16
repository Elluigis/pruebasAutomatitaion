#Simulacion de YouTubeWeb desde un Celular
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
001 Busqueda You Tube Celular Samsung Galaxy S8
    Open Browser    https://www.youtube.com/    chrome
    Set Selenium Speed  0.3
    Set Window Size     360     740
    Wait Until Element Is Visible   css=#logo > div > ytd-logo > yt-icon
    Click Element   css=#center > yt-icon-button
    Input Text      css=#search-input > input    Creep
    Click Element   css=#search > button
    Wait Until Element Is Visible   css=#contents > ytd-item-section-renderer
    Click Element   css=#title-wrapper > h3 > a

