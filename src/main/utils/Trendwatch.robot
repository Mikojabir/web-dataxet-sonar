*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/trendwatchPage.robot

*** Keywords ***
Click Open App button
    [Documentation]    Positive
    Click Button    ${TRENDWATCH_BUTTON}
    Wait Until Element Is Visible    ${TRANDWATCH_IMG_LOGO}
    Page Should Contain Image    ${TRANDWATCH_IMG_LOGO} 
    Wait Until Element Is Visible    ${TRANDWATCH_TWITTER_BUTTON}
    Sleep    2s
    
Navigation to channel Youtube
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_YOUTUBE_BUTTON}
    Sleep    2s
    Click Button   ${TRANDWATCH_YOUTUBE_BUTTON}
    Sleep    2s


Navigation to channel Google
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_GOOGLE_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_GOOGLE_BUTTON}
    Sleep    2s


Navigation to channel Facebook
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_FACEBOOK_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_FACEBOOK_BUTTON}
    Sleep    2s


Navigation to channel Forum
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_FORUM_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_FORUM_BUTTON}
    Sleep    2s


Navigation to channel Instagram
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_INSTAGRAM_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_INSTAGRAM_BUTTON}
    Sleep    2s


Navigation to channel Tiktok
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANDWATCH_TIKTOK_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_TIKTOK_BUTTON}
    Sleep    2s

Switch to Slide mode
    [Documentation]    Positive
    Click Element    ${TRANDWATCH_SLIDE_MODE_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_SLIDE_MODE_NEXT_BUTTON}
    Sleep    2s
    Click Button    ${TRANDWATCH_SLIDE_MODE_PREV_BUTTON}

Switch to Table mode
    [Documentation]    Positive
    Click Element    ${TRANDWATCH_TABLE_MODE_BUTTON}
    Sleep    2s

Switch to TV mode
    [Documentation]    Positive
    Click Element    ${TRANDWATCH_TV_MODE_BUTTON}
    Sleep    2s
    Run Keyword    Press Keys    None    ESCAPE
    Sleep    2s

Select Singapore country
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANSWATCH_DD_COUNTRY}
    Click Element    ${TRANSWATCH_DD_COUNTRY} 
    Sleep    2s
    Click Element    ${TRANSWATCH_DD_COUNTRY_SINGAPORE} 
    Sleep    2s

Select Malaysia country
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANSWATCH_DD_COUNTRY} 
    Click Button    ${TRANSWATCH_DD_COUNTRY} 
    Sleep    2s
    Click Element    ${TRANSWATCH_DD_COUNTRY_MALAYSIA} 
    Sleep    2s

Select Thailand country
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANSWATCH_DD_COUNTRY} 
    Click Button    ${TRANSWATCH_DD_COUNTRY} 
    Sleep    2s
    Click Element    ${TRANSWATCH_DD_COUNTRY_THAILAND} 
    Sleep    2s

Select Indonesia country
    [Documentation]    Positive
    Wait Until Element Is Visible    ${TRANSWATCH_DD_COUNTRY} 
    Click Button    ${TRANSWATCH_DD_COUNTRY} 
    Sleep    2s
    Click Element    ${TRANSWATCH_DD_INDONESIA} 
    Sleep    2s