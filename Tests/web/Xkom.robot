*** Settings ***
Documentation  A simple test suite which checks prices of products on x-kom.pl
Library  SeleniumLibrary
Resource  Page Objects/xkom.resource
Test Teardown  Close Browser

*** Variables ***
${BROWSER}  Chrome
${PRODUCT}  RTX 3070

*** Test Cases ***
Search for a product on x-kom.pl
    [Tags]  Smoke
    Open The Main Page "${BROWSER}"
    Search for a product "${PRODUCT}"
