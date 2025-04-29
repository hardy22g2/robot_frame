***Settings***
Library           SeleniumLibrary

***Variables***
${BROWSER}        chrome
${GMAIL_URL}      https://mail.google.com
${EMAIL}          hardeep.19964@gmail.com  # Replace with your actual email
${PASSWORD}       not2late       # Replace with your actual password

***Test Cases***
Gmail Login Test
    Open Browser To Gmail
    Enter Email
    Enter Password
    Verify Login
    Close Browser

***Keywords***
Open Browser To Gmail
    Open Browser    ${GMAIL_URL}    ${BROWSER}
    Maximize Browser Window

Enter Email
    Wait Until Element Is Visible    xpath://input[@type='email']    timeout=10
    Input Text    xpath://*[@id="identifierId"]    ${EMAIL}
    Click Button    xpath://*[@id="identifierNext"]/div/button

Enter Password
    Wait Until Element Is Visible    xpath://*[@id="password"]/div[1]/div/div[1]/input    timeout=20
    Input Text    xpath://*[@id="password"]/div[1]/div/div[1]/input    ${PASSWORD}
    Click Button    xpath://*[@id="passwordNext"]/div/button

Verify Login
    Wait Until Page Contains Element    xpath://*[@id=":n1"]/div/div[2]    timeout=20
    Element Should Be Visible    xpath://div[@aria-label='Primary']
