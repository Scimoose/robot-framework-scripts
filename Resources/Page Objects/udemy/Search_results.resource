*** Settings ***
Documentation  Dummy file, had to drop this part of the project because of Udemy human verification
Library  SeleniumLibrary
Resource  Navbar.resource

*** Variables ***
${ORIGINAL PRICE}  279.99 zł

*** Keywords ***
Choose course
    [Documentation]  Dummy element, would click on a specific course

Check whether course is on discount
    [Documentation]  Dummy element, would pick a course and assume price is the same - if not it would be on discount - could use "run keyword and continue on failure" here
