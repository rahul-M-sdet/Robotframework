*** Settings ***
Library             SeleniumLibrary
Documentation       Validating the unsuccessful login
Test Teardown       Close Browser


*** Test Cases ***
Validate the unsuccessful login
    Open the browser and launch the google website
    Fill the login form
    wait until it's check and display the error
    Validate the error message

*** Variables ***
${Message_elert_text}   css:.alert-danger

*** Keywords ***
Open the browser and launch the google website
    create webdriver    Chrome
    go to   https://rahulshettyacademy.com/loginpagePractise/

Fill the login form
    Input Text          id:username     rahulshettyacademy
    Input Password      id:password        123456
    Click Button        id:signInBtn

wait until it's check and display the error
    Wait Until Element Is Visible   ${Message_elert_text}


Validate the error message
     ${result}=   Get Text    ${Message_elert_text}
     Should Be Equal    ${result}  Incorrect username/password.







