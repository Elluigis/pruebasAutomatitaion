*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
@{items}        1       2       3       4       5       6       7


*** Test Cases ***
001 Visualizacion Vistas Previas
    Set Selenium Speed      0.3
    Open Browser    http://automationpractice.com/index.php     chrome
    Set Window Size     1365    924
    Set Focus To Element        css=#home-page-tabs > li:nth-child(2) > a
    Click Element   css=#home-page-tabs > li:nth-child(2) > a
    FOR     ${cadaItem}    IN   @{items}
        Set Focus To Element    css=#blockbestsellers > li:nth-child(${cadaItem}) > div > div.left-block > div > a.product_img_link > img
        ${titulo}=      Get Text    css=#blockbestsellers > li:nth-child(${cadaItem}) > div > div.right-block > h5 > a
        Click Element   css=#blockbestsellers > li:nth-child(${cadaItem}) > div > div.left-block > div > a.product_img_link > img
        Wait Until Element Is Visible        css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Select Frame    css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Wait Until Element Is Visible        css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4
        Element Text Should Be      css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1            ${titulo}
        Unselect Frame
        Click Element   css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    Close Browser
