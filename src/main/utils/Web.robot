*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/loginPage.robot
Resource    ../pages/dashboarPage.robot

*** Keywords ***
Prepare Environment
    Create Webdriver    Chrome

Open application
    Go To    ${URL}
    Maximize Browser Window
    Wait Until Page Contains Element    ${WELCOME_LOGIN_PAGE}
    Element Text Should Be    ${WELCOME_LOGIN_PAGE}    Enter your platform credentials below to enter

Login success
    [Documentation]    Positive
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${ANALYTIC_CARD}
    Element Text Should Be    ${ANALYTIC_CARD}    DXT360 Analytics
    Close Browser

Login success with show password
    [Documentation]    Positive
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${SHOW_PASSWORD_FIELD} 
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ANALYTIC_CARD}
    Element Text Should Be    ${ANALYTIC_CARD}    DXT360 Analytics
    Close Browser

Login with invalid email
    [Documentation]    Negative
    Input Text    ${USERNAME_FIELD}    test@getnada.com
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    Element Text Should Be  ${ERROR_MESSAGE}    We could not find that email and password combination
    Close Browser

Login with invalid password
    [Documentation]    Negative
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Password    ${PASSWORD_FIELD}    testing123
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible   ${ERROR_MESSAGE}
    Element Text Should Be    ${ERROR_MESSAGE}    We could not find that email and password combination
    Close Browser

Login without input email
    [Documentation]    Negative
    Input Text    ${USERNAME_FIELD}    a
    Run Keyword    Press Keys    None    BACK_SPACE
    Input Password    ${PASSWORD_FIELD}    testing123
    Wait Until Element Is Visible   ${ERROR_MESSAGE_EMAIL_FIELD}
    Element Text Should Be  ${ERROR_MESSAGE_EMAIL_FIELD}    Username is required
    Close Browser

Login without input password
    [Documentation]    Negative
    Input Password    ${PASSWORD_FIELD}    a
    Run Keyword    Press Keys    None    BACK_SPACE
    Wait Until Element Is Visible    ${ERROR_MESSAGE_PASSWORD_FIELD}
    Element Text Should Be  ${ERROR_MESSAGE_PASSWORD_FIELD}    Password is required
    Close Browser

Forgot password link
    [Documentation]    Positive
    Click Element    ${FORGOT_PASSWORD_LINK}
    Wait Until Element Is Visible    ${FORGOT_PASSWORD_PAGE}
    Element Text Should Be  ${FORGOT_PASSWORD_PAGE}    Forgot Password
    Close Browser

Privary policy link
    [Documentation]    Positive
    Click Element    ${PRIVACY_POLICY_LINK}
    Wait Until Element Is Visible    ${PRIVACY_POLICY_PAGE}
    Element Text Should Be  ${PRIVACY_POLICY_PAGE}    Privacy Policy
    Close Browser