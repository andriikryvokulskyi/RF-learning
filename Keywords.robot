*** Keywords ***
Home Page is open
    Open Browser    ${LoginPage_url}    chrome
    Maximize Browser Window

User logged in the app
    Open Browser    ${LoginPage_url}    chrome
    Maximize Browser Window
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    @{CREDENTIALS}[1]
    Click Button    id=btnLogin

User login with valid credentials
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    @{CREDENTIALS}[1]
    Click Button    id=btnLogin

User succesfully logged in the app
    Location Should Be    ${MainDashboard_url}

Main Dashboard elements are displayed
    Element Should Be Visible    id=welcome
    Element Should Contain    id=welcome    Welcome Admin

User login with invalid credentials
    Input Text    id=txtUsername    @{InvalidCredentials}[0]
    Input Password    id=txtPassword    @{InvalidCredentials}[1]
    Click Button    id=btnLogin

Login in the app should fail
    Location Should Be    ${FailLogin_url}
    Element Should Contain    id=spanMessage    Invalid credentials

User click Logout
    Click Element    id=welcome
    Click Element    xpath=//*[@id="welcome-menu"]/ul/li[2]/a

Logged out successfully
    Location Should Be    ${Logout_url}
