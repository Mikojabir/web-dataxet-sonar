*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/anayticsPage.robot

*** Keywords ***
Click Open App button
    Click Button    ${ANALYTICS_BUTTON}
    Wait Until Element Is Visible    ${ANALYTICS_IMG_LOGO}
    Page Should Contain Image    ${ANALYTICS_IMG_LOGO}  
    Close Browser
    
    

