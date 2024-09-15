*** Settings ***
Resource    ../../../../main/utils/Web.robot

*** Test Cases ***
Test verify as a user successfuly login into application
    Web.Open application
    Web.Login success
    Close Browser

Test verify as a user successfuly login into application with show password
    Web.Open application
    Web.Login success with show password
    Close Browser

Test verify as a user login into application with invalid email
    Web.Open application
    Web.Login with invalid email
    Close Browser

Test verify as a user login into application with invalid password
    Web.Open application
    Web.Login with invalid password
    Close Browser

Test verify as a user login into application without input email
    Web.Open application
    Web.Login without input email
    Close Browser

Test verify as a user login into application without input password
    Web.Open application
    Web.Login without input password
    Close Browser

Test verify as a user able to click forgot password
    Web.Open application
    Web.Forgot password link
    Close Browser

Test verify as a user able to click privacy policy
    Web.Open application
    Web.Privary policy link
    Close Browser