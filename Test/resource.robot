*** Settings ***
Library             SeleniumLibrary
Documentation       Validating the unsuccessful login

*** Keywords ***
open the browser and launch the google website
    create webdriver    Chrome
    go to   https://rahulshettyacademy.com/loginpagePractise/

*** Variables ***
${User_Name}        rahulshettyacademy
${Invalid_password}     123456
${valid_password}   learning