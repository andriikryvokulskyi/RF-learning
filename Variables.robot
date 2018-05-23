*** Variables ***
${LoginPage_url}    http://opensource.demo.orangehrmlive.com/login
@{CREDENTIALS}    Admin    admin
@{InvalidCredentials}    Admin1    invalidPassword
${MainDashboard_url}    http://opensource.demo.orangehrmlive.com/index.php/dashboard
${FailLogin_url}    http://opensource.demo.orangehrmlive.com/index.php/auth/validateCredentials
${Logout_url}     http://opensource.demo.orangehrmlive.com/index.php/auth/login
