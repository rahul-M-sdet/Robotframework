*** Settings ***
Library             SeleniumLibrary
Test Setup          open the browser and launch the google website
Test Teardown       Close Browser
Documentation       Validating the unsuccessful login
Resource            resource.robot


*** Test Cases ***
Validate the unsuccessful login

    Fill the login form
    wait until it's check and display the error
    Validate the error message

Validate card display in the shopping page

    fill the login form    ${User_Name}     ${valid_password}

*** Variables ***
${Message_elert_text}   css:.alert-danger

*** Keywords ***


Fill the login form
    [arguments]         ${username}     ${password}
    Input Text          id:username     ${User_Name}
    Input Password      id:password     ${Invalid_password}
    Click Button        id:signInBtn

wait until it's check and display the error
    Wait Until Element Is Visible   ${Message_elert_text}


Validate the error message
     ${result}=   Get Text    ${Message_elert_text}
     Should Be Equal    ${result}  Incorrect username/password.







