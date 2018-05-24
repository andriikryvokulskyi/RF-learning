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

User click over the Main Menu buttons
    Set Selenium Speed    0.5
    Element Should Be Visible    //*[@id="wrapper"]/div[2]

Able to navigate through Main Menu smooth
    Click Element    id=menu_admin_viewAdminModule
    Element Should Be Visible    xpath=//*[@id="systemUser-information"]/div[1]
    Click Element    id=menu_pim_viewPimModule
    Element Should Be Visible    xpath = //*[@id="employee-information"]/div[1]
    Click Element    id=menu_leave_viewLeaveModule
    Element Should Be Visible    xpath = //*[@id="leave-list-search"]/div[1]
    Click Element    id=menu_time_viewTimeModule
    Element Should Be Visible    //*[@id="content"]/div[1]/div[1]
    Click Element    id=menu_recruitment_viewRecruitmentModule
    Element Should Be Visible    xpath=//*[@id="srchCandidates"]/div[1]
    Click Element    id=menu__Performance
    Element Should Be Visible    xpath=//*[@id="wrapper"]/div[2]/ul/li[6]/ul
    Click Element    id=menu_dashboard_index
    Element Should Be Visible    xpath=//*[@id="content"]/div/div[1]
    Click Element    id=menu_directory_viewDirectory
    Element Should Be Visible    xpath=//*[@id="content"]/div[1]/div[1]
