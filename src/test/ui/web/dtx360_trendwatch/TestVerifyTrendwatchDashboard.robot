*** Settings ***
Resource    ../../../../main/utils/Web.robot
Resource    ../../../../main/utils/Trendwatch.robot

*** Test Cases ***
Test Validation as a user able to click open app and direct to DXT360 Trendwatch dashboard
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Close Browser

Test Validation as a user can navigate between different channel tabs in DXT360 Trendwatch dashboard
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Trendwatch.Navigation to channel Youtube
    Trendwatch.Navigation to channel Google
    Trendwatch.Navigation to channel Facebook
    Trendwatch.Navigation to channel Forum
    Trendwatch.Navigation to channel Instagram
    Trendwatch.Navigation to channel Tiktok
    Close Browser

Test Validation as as user able to the switch with Slide moded and isplayed in slide format
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Trendwatch.Navigation to channel Youtube
    Trendwatch.Switch to Slide mode
    Close Browser

Test Validation as as user able to the switch with Table mode and displayed in table format
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Trendwatch.Navigation to channel Forum
    Trendwatch.Switch to Slide mode
    Trendwatch.Switch to Table mode
    Close Browser

Test Validation as as user able to the switch with TV mode and displayed in TV format
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Trendwatch.Navigation to channel Google
    Trendwatch.Switch to TV mode
    Close Browser

Test Validation as a user able to select country and feed updates to display content
    Web.Open application
    Web.Login success
    Trendwatch.Click Open App button
    Trendwatch.Select Singapore country
    Close Browser