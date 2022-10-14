*** Settings ***
Documentation  A simple resource page for the x-kom.pl website
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.x-kom.pl/

*** Keywords ***
Open The Main Page "${BROWSER}"
    [Documentation]  Opens the main page and checks the title
    Open Browser  ${URL}  ${BROWSER}
    Title Should Be  x-kom.pl - Sklep komputerowy
    Accept cookies

Search for a product "${PRODUCT}"
    [Documentation]  This method uses the search bar to search for a product
    Input Text  xpath=//input[@type="text"]  ${PRODUCT}
    Click Button  xpath=//header/div[1]/div[3]/div[1]/div[1]/div[1]/div[1]/button[3]
    Sleep  5s

Accept cookies
    Click Button  W porządku