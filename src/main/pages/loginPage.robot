*** Variables ***
#DATA
${URL}    https://login-demo360.sonarplatform.com/login
${USERNAME}     qa.test.trendwatch@sonar.id
${PASSWORD}    tR3nD_watc#

#ELEMENT LOGIN PAGE
${USERNAME_FIELD}    //*[contains(text(), 'Email Address')]//following::input[1]
${PASSWORD_FIELD}    //*[contains(text(), 'Password')]//following::input[1]
${LOGIN_BUTTON}    //*[@type='submit']
${WELCOME_LOGIN_PAGE}    //*[contains(text(), 'Enter your platform')]
${SHOW_PASSWORD_FIELD}    //*[@type='checkbox']
${ERROR_MESSAGE}    //*[contains(text(),'We could not find')]
${ERROR_MESSAGE_EMAIL_FIELD}    //*[contains(text(), 'Username is required')]
${ERROR_MESSAGE_PASSWORD_FIELD}    //*[contains(text(), 'Password is required')]
${FORGOT_PASSWORD_LINK}    //*[@href='/forgot-password']
${FORGOT_PASSWORD_PAGE}    //h3[contains(text(),'Forgot Password')]
${PRIVACY_POLICY_LINK}    //*[@href='/privacy-policy']
${PRIVACY_POLICY_PAGE}    //h1[contains(text(),'Privacy Policy')]