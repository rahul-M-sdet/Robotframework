*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Validate the successful login
    Open the browser and launch the google website
    fill the login details and click on user



*** Keywords ***
Open the browser and launch the google website
    create webdriver    Chrome
    go to   https://rahulshettyacademy.com/loginpagePractise/
fill the login details and click on user
    Input Text          id:username     rahulshettyacademy
    Input Password      id:password     learning
    Click Element       css:input[value='user']
    Wait Until Element Is Visible    okayBtn
    click element           okayBtn
    Select From List By Value       css:select.form-control     teach
    Select Checkbox         terms
    Checkbox Should Be Selected     terms







*** Variables ***
