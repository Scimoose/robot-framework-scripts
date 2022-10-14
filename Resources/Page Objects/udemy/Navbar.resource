*** Settings ***
Documentation  A simple resource page for the x-kom.pl website
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.udemy.com/

*** Keywords ***
Open The Main Page "${BROWSER}"
    [Documentation]  Opens the main page and checks the title
    Open Browser  ${URL}  ${BROWSER}
    Title Should Be  Kursy internetowe — naucz się czego tylko chcesz, kiedy Ci pasuje | Udemy

Search for available courses "${COURSE}"
    [Documentation]  Searches for given term
    Input Text  //input[@type='text'][@placeholder='Szukaj dowolnych elementów']  ${COURSE}
    Sleep  2s
    Click Button  //button[@type='submit']
    Wait Until Page Contains  dla zapytania “Robot Framework”