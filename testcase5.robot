*** Settings ***
Library             SeleniumLibrary
Test Setup          open the browser and launch the google website
Test Teardown       Close Browser
Documentation       Validating the unsuccessful login
Resource            resource.robot
Library             ../customLibrary/Shop.py



*** Variables ***
${Message_elert_text}   css:.alert-danger

*** Test Cases ***
login with ${Username} and the ${password}                        rahulsheety      1234

*** Keywords ***

Validate the unsuccessful login
    [Arguments]     ${User_Name}     ${Password}
    Fill the login form   ${User_Name}    ${Password}
    wait until it's check and display the error
    Hello world
    Validate the error message


Fill the login form
    [Arguments]         ${User_Name}     ${Password}
    Input Text          id:username     ${User_Name}
    Input Password      id:password     ${Invalid_password}
    Click Button        id:signInBtn

wait until it's check and display the error
    Wait Until Element Is Visible   ${Message_elert_text}


Validate the error message
     ${result}=   Get Text    ${Message_elert_text}
     Should Be Equal    ${result}  Incorrect username/password.







