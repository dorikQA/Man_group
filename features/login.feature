Feature: Login Page
  @login
  Scenario: Login Page -Incorrect or incomplete email address
    Given Open the Man Group site
    #wrong or incomplete email
    And Input email address "Testing"
    Then Click "Login" button
    Then Warning message "Invalid Email Address" should be displayed

  Scenario: Login Page -  the correct email address but keep the rest of the fields empty
    Given Open the Man Group site
    #correct email
    Then Input email address "Testing112123123@gmail.com"
    #empty password
    Then Click "Login" button
    Then Warning message "Please enter a password" should be displayed

  Scenario:  Login Page correct -Empty pin - correct email and correct password
    Given Open the Man Group site
    #Correct email
    Then Input email address "Testing112123123@gmail.com"
    #Correct password
    Then Enter password "0ChangeMe0!"
    Then Click "Login" button
    Then Warning message "Please enter your pin" should be displayed
# 4
  Scenario: Login Page - Incorrect pin- Correct email -Correct password
    Given Open the Man Group site
    #correct email
    Then Input email address "Testing112123123@gmail.com"
    #correct password
    Then Enter password "0ChangeMe0!"
    #incorrect pin
    Then Enter pin "9999"
    Then Click "Login" button
    Then Warning message "We are unable to match the username or pin" should be displayed
    Then Close "We are unable to match the username or pin" overlay

Scenario: Login Page - Forgot password link
    Given Open the Man Group site
    Then Click on "Forgot your password" link
    Then "Forgot your Password" message title should be displayed
    And "Don't worry, it happens." should be displayed
    And "We'll send you a link to create a new password" should be displayed

  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email pop up closing
    Given Open the Man Group site
    Then Click on "Forgot your password" link
    #wrong email
    Then Click "Send" password  button
    Then Warning message "Invalid Email Address" should be displayed
    Then Close warning message "Invalid Email Address"
    Then "Invalid Email Address" message should be close
# 7
  Scenario:Login Page - Forgot password functionality - Correct email
    Given Open the Man Group site
    Then Click on "Forgot your password" link
    #correct email
    Then Enter email "dorik80@mail.ru" to reset password
    Then Click "Send" password  button
    Then Verify success reset password message "Thanks!"."We have sent an email to "dorik80@mail.ru"
    Then Close "Thanks!" overlay
##FORGOT YOUR PIN
# 8
  Scenario: Login Page - Forgot Pin functionality - Verifying pop-up window Forgot your pin
    Given Open the Man Group site
    Then Click on "Forgot your pin" link
    Then "Forgot your pin?" message should be displayed
    Then Verify "Don't worry, it happens. We will be calling you to create a new pin" message should be displayed

#9
  Scenario:Login Page - Forgot Pin functionality - Pop-up window Forgot your pin-Empty email
    Given Open the Man Group site
    Then Click on "Forgot your pin" link
    #empty email
    Then Click "Send" pin button
    Then Warning message "Invalid Email Address" should be displayed
    Then Close warning message "Invalid Email Address"

#10
  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email message  closing
    Given Open the Man Group site
    Then Click on "Forgot your password" link
    #email incorrect-empty
    Then Click "Send" password  button
    Then Warning message "Invalid Email Address" should be displayed
    Then Close warning message "Invalid Email Address"
#11
  Scenario: Login Page - Forgot Pin functionality - Correct email
    Given Open the Man Group site
    Then Click on "Forgot your pin" link
    #wrong email
    Then Enter email address "dorik80@mail.ru"
    Then Click "Send" pin button
    Then Verify reset pin success message "Thanks!"."We will be calling you to reset your pin shortly"
    Then Close "We will be calling you to reset your pin shortly" overlay
# 12
  Scenario: Login page - Verifying that description submodules displayed on login page
    Given Open the Man Group site
    Then  List of  description submodules should be displayed on page:
      |subsections|
      |Customisable Work Spaces |
      |Advanced Charting    |
      |Intuitive Drag &     |
      |Maximum Mobility     |
      |Change Research Focus|
      |Dive into Underlying |
      |Toggle Between Portfolio|
      |Create Linked Modules   |
#13
  Scenario: Login page - Verifying footer disclaimers
    Given Open the Man Group site
    Then  List of disclaimers should be displayed on page:
      |disclaimers|
      |Terms and Conditions|
      |Privacy Policy  |
      |Security        |

#14
  Scenario: Login with valid credentials- Verify that user  is successfully login
    Given Open the Man Group site
    Then Input email address "Testing112123123@gmail.com"
    Then Enter password "0ChangeMe0!"
    Then Enter pin "9876"
    Then Click "Login" button



