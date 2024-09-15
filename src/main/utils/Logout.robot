*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/logoutPage.robot

*** Keywords ***
Click logout button
    [Documentation]    Positive
    Click Element    ${LOGOUT_PROFILE_ICON}
    Sleep    2s
    Click Element    ${LOGOOUT_BUTTON}