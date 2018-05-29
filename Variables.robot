*** Variables ***
${LoginPage_url}    http://opensource.demo.orangehrmlive.com/login
@{CREDENTIALS}    Admin    admin
@{InvalidCredentials}    Admin1    invalidPassword
${MainDashboard_url}    http://opensource.demo.orangehrmlive.com/index.php/dashboard
${FailLogin_url}    http://opensource.demo.orangehrmlive.com/index.php/auth/validateCredentials
${Logout_url}     http://opensource.demo.orangehrmlive.com/index.php/auth/login
${Checkboxes_url}    http://the-internet.herokuapp.com/checkboxes
${Checkbox_1}     //*[@id="checkboxes"]/input[1]
${Checkbox_2}     //*[@id="checkboxes"]/input[2]
