*** Settings ***
Resource    ../../../../main/utils/Web.robot
Resource    ../../../../main/utils/Trendwatch.robot
Resource    ../../../../main/utils/Logout.robot

*** Test Cases ***
Test verify as a user able to click Logout button and direct to login page
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Logout.Click logout button
    Close Browser
