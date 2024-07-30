*** Settings ***
Library             SeleniumLibrary
Library             datadriver
Test Setup          open the browser and launch the google website
Test Teardown       Close Browser
Documentation       Validating the unsuccessful login
Resource            resource.robot
Test Template       Validate the unsuccessful login

*** Variables ***
${Message_elert_text}   css:.alert-danger

*** Test Cases ***
user is login ${username} and password ${password}              cbg            12334

*** Keywords ***
[Arguments]                 ${username}         ${password}
Validate the unsuccessful login
Fill the login form
    [Arguments]         ${username}     ${password}
    Input Text          id:username     ${User_Name}
    Input Password      id:password     ${Invalid_password}
    Click Button        id:signInBtn

wait until it's check and display the error
    Wait Until Element Is Visible   ${Message_elert_text}


Validate the error message
     ${result}=   Get Text    ${Message_elert_text}
     Should Be Equal    ${result}  Incorrect username/password.


















