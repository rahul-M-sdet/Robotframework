*** Settings ***
Library             SeleniumLibrary
Library             String
Library             Collections
Test Setup          open the browser and launch the google website
Test Teardown       Close Browser
Documentation       Validating the unsuccessful login
Resource            resource.robot


*** Test Cases ***
Validate the handling of child window
    select the link of child window
    validate that user swith to child window
    grab the Email Id from the child window
    switch to parent window and paste the Email Id

*** Keywords ***
select the link of child window
    click element      css:.blinkingText
    sleep               5

validate that user swith to child window
    Switch Window   NEW
    Element Text Should Be      css:h1    DOCUMENTS REQUEST

grab the Email Id from the child window

    ${new_text}=    get text    css:.red
    @{words}=   Split String   ${new_text}  at
    ${Text_split}=    Get From List   ${words}    1
    log    ${Text_split}
    ${New_text}=     split string    ${Text_split}
    ${Emaild}=  get from list   ${New_text}  0

switch to parent window and paste the Email Id
    Switch Window       MAIN
    Title Should Be     LoginPage Practise | Rahul Shetty Academy
    Input Text          id:username     mentor@rahulshettyacademy.com















