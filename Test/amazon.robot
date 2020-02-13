*** Settings ***
Documentation           This is same basic info about the whole test suite

Library                 SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                     about:blank  chrome

Go To Web Page
    Go To                            http://www.amazon.com
    Wait Until Page Contains         Your Amazon.com
Search for Product
    Input Text                       id: twotabsearchtextbox  ferrari 458
    Click Button                     xpath://*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains         results for "ferrari 458"

End Web Test
    Close Browser

*** Test Cases ***
User can access amazon.com
        [Documentation]             This is same basic info about the test
        [Tags]                      Test 1
        Begin Web Test
        Go To Web Page
        Search for Product
        End Web Test

