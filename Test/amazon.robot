*** Settings ***
Documentation       This is some basic info about the whole test suite
Library             SeleniumLibrary
Resource            ../Resources/keywords.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***

${BROWSER} =   chrome
${URL} =  http://www.amazon.com



*** Test Cases ***
User can access amazon.com
        [Documentation]             This is same basic info about the test1
        [Tags]                      Test 1
        Go To Web Page


User can conduct a search
        [Documentation]             This is same basic info about the test2
        [Tags]                      Test 2
        Go To Web Page
        Search for Product          ferrari 458     results for "ferrari 458"

User can conduct another search
        [Documentation]             This is same basic info about the test3
        [Tags]                      Test 3
        Go To Web Page
        Search for Product          tesla model x     results for "tesla model x"


