*** Settings ***
Documentation           This is same basic info about the whole test suite

Library                 SeleniumLibrary

*** Test Cases ***
User can access amazon.com
        [Documentation]             This is same basic info about the test
        [Tags]                      Test 1
        Open Browser                about:blank  chrome
        Go To                       http://www.amazon.com
        Wait Until Page Contains    Your Amazon.com
        Input Text                  id: twotabsearchtextbox  ferrari 458
        Click Button                xpath://*[@id="nav-search"]/form/div[2]/div/input
        Wait Until Page Contains    results for "ferrari 458"
        Close Browser
