
Feature: Account

  Background:
    Given Open the Man Group site
    Given Enter "Testing112123123@gmail.com" password "0ChangeMe0!$$" and pin "9876" and click "Login" button
#1
  Scenario:  Reset profile settings
    Then Click "Profile" icon
    Then Tap "Reset" button
#2
  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog
    Then Tap on "plus" button
    Then Verify "Create a New Space" overlay opens
    Then Tap "close" button on the "Create a new space" overlay
    Then "Create a New Space" overlay should be closed

#3
  Scenario: Creating the Work Space - Create Space WITHOUT the name check the name
    Then Tap on "plus" button
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then "Name your space" tab should exists
    Then Just created "Name your space" tab should be active
#4
  Scenario: Creating the Work Space - Create Space WITH the name check the name
    Then Tap on "plus" button
    Then Enter "Test Automation" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then "Test Automation" tab should exists
    ## WORK SPACE DUPLICATE-REMOVE-RENAME FUNCTIONS
#5
  Scenario: Checking the Work Space - Duplicate  functionality
    Then Tap on "plus" button
    Then Enter "Duplicate" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Duplicate"
    Then Click "Duplicate" in menu
    Then "copy of Duplicate" tab should exists


#6
  Scenario: Checking the Work Space - Rename functionality
    Then Tap on "plus" button
    Then Enter "Rename me" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Rename me"
    Then Click "Rename" in menu
    Then Enter new name "Renamed WS" of workspace and press enter button
    Then "Renamed WS" tab should exists
#7
  Scenario: Checking the Work Space - Remove functionality
    Then Tap on "plus" button
    Then Enter "Remove me" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Remove me"
    Then Click "Remove" in menu
    Then WorkSpace "Remove me" should not be displayed
##
##7
#  Scenario: Checking the Work Space - Rename functionality
#    Given Open the Man Group site
#    Given Enter "modtestinternalclientservice@gmail.com" password "Wsodtest1!" and pin "9876" and click "Login" button
#    Then Move mouse to "Renamed WS" ws and tap "Remove"
#    Then Verify "Renamed WS" doesn't exist
#  Scenario: My Profile- Checking that user can open and close My Profile overlay
#    Given Open the Man Group site
#    Given Enter "modtestinternalclientservice@gmail.com" password "Wsodtest1!" and pin "9876" and click "Login" button
#    Then Click "Profile" icon
#    Then Verify "My Profile" overlay opens
#    Then Tap "close"
#    Then Verify that "My Profile" overlay was closed

#
##8
#  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference


#    Then Click "Profile" icon
#    Then Verify "My Profile" overlay contains subsections:
#      |subsections|
#      |Contact Information |
#      |Change Password     |
#      |Language Selector   |
#      |Preferences        |
# #9
#  Scenario:  My Profile - Verify  subsections in Contact Information required subsections
#    Then Click "Profile" icon
#    Then Verify subsections in Contact Information:
#      |subsections|
#      |Name       |
#      |Email      |
#      |Company   |
# #10
#  Scenario: My Profile - Change Password contains required links
#    Then Verify Change Password contains links:
#      |links|
#      |Click here to reset your password|
#      |Click here to reset your pin     |
# #11
#  Scenario: My Profile - Verify  Language Selector contains required languages
#    Then Verify Language Selector contains languages:
#      |languages|
#      |English  |
# #12
#  Scenario:My Profile - Verify  subsections in Preferences required Theme Styles
#    Then Verify Preferences contains Theme Styles:
#      |themes|
#      |Day   |
#      |Night  |
#    Then Tap "close"
#    Then Verify that "My Profile" overlay was closed
#
## "CREATE NEW SPACE" OVERLAY
##13
#  Scenario: Create New Space overlay - Verifying that General, Performance, Risk, Admin exist
#    #Then Login with valid credentials
#    Then Tap on "+" button
#    Then Verify "Create a New Space" overlay "01. MODULE" column contains:
#      |submodule  |
#      |General    |
#      |Performance|
#      |Risk       |
#      |Admin      |
#    Then Tap "close"
## CREATE NEW SPACE OVERLAY-VERIFYING MODULES
##14
#  Scenario: Create New Space overlay - General contains required submodules
#    Then Tap on "+" button
#    Then Verify overlay "Create a New Space" module "General" contains:
#      |submodule          |
#      |Documents          |
#      |Fund Summary       |
#      |Fund Ratings       |
#      |Commentary         |
## CREATE NEW SPACE OVERLAY-VERIFYING SUBMODULES-USER PREFERENCES
# #15
#  Scenario: Create New Space overlay - Risk contains required submodules
#    Then Tap on "+" button
#    Then Verify overlay "Create a New Space" module "Risk" contains:
#      |submodule          |
#      |Risk Snapshot      |
#      |VaR                |
#      |Stress & Scenario  |
#      |Sensitivity        |
#      |VaR Return Envelope|
#      |Exposure           |
# #16
#  Scenario: Create New Space overlay - Perfomance contains required submodules
#    Then Tap on "+" button
#    Then Click "Performance"
#    Then Verify overlay "Create a New Space" module "Performance" contains:
#      |submodule                     |
#      |Performance Decomposition     |
#      |Performance Snapshot          |
#      |Statistics                    |
#      |Style                         |
#      |Benchmark Up/Down             |
#  #17
#  Scenario: Create New Space overlay - Admin contains required submodules
#    Then Tap on "+" button
#    Then Click "Admin"
#    Then Verify overlay "Create a New Space" module "Admin" contains:
#      |submodule          |
#      |Data Monitor     |
