*** Settings ***
Documentation  A simple test suite which checks availability of courses on Udemy - verified it works before Udemy started asking whether I'm human :)
Library  SeleniumLibrary
Resource  Page Objects/udemy/Navbar.resource
Resource  Page Objects/udemy/Search_results.resource
Test Teardown  Close Browser

*** Variables ***
${BROWSER}  Chrome
${COURSE}  Robot Framework

*** Test Cases ***
Search for courses on Udemy
    [Documentation]  Opens the main page and searches for given course
    Open The Main Page "${BROWSER}"
    Search for available courses "${COURSE}"
