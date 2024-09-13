*** Settings ***
Resource    ../../../../main/utils/Web.robot
Resource    ../../../../main/utils/Anaytics.robot

*** Test Cases ***
Test Validation as a user able to click open app and direct to DXT360 Analytics dashboard
    Web.Open application
    Web.Login success
    Anaytics.Click Open App button