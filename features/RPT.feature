Feature: Risk & Performance Page

  Background:
    Given Open the Man Group site
    Given Enter "Testing112123123@gmail.com" password "0ChangeMe0!$$" and pin "9876" and click "Login" button
    Then Click "Profile" icon
    Then Tap "Reset" button
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
#8
  @myportfolio
  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
    Then Click "Profile" icon
    Then Verify "My Profile" overlay contains subsections:
      |Contact Information |
      |Change Password     |
      |Language Selector   |
      |Preferences        |
#9
  @myportfolio
  Scenario:  My Profile - Verify  subsections in Contact Information required subsections
    Then Click "Profile" icon
    Then Verify subsections in Contact Information:
      |Name       |
      |Email      |
      |Company    |
#10
  @myportfolio
  Scenario: My Profile - Change Password contains required links
    Then Click "Profile" icon
    Then Verify Change Password contains links:
      |Click here to reset your password|
      |Click here to reset your pin     |

#11
  @myportfolio
  Scenario: My Profile - Verify  Language Selector contains required languages
    Then Click "Profile" icon
    Then Verify Language Selector contains languages:
      |English  |

 #12
  @myportfolio
  Scenario:My Profile - Verify  subsections in Preferences required Theme Styles
    Then Click "Profile" icon
    Then Verify Preferences contains Theme Styles:
      |Day   |
      |Night  |

# "CREATE NEW SPACE" OVERLAY
#13
  @createnewspace
 Scenario: Create New Space overlay - Verifying that General, Performance, Risk, Admin exist
    Then Tap on "plus" button
    Then Verify "Create a New Space" overlay "01. MODULE" column contains:
      |General    |
      |Performance|
      |Risk       |
      |Admin      |

# CREATE NEW SPACE OVERLAY-VERIFYING MODULES
#14
  @createnewspace
 Scenario: Create New Space overlay - General contains required submodules
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "General"
    Then Verify module "General" contains submodules:
      |Documents          |
      |Fund Summary       |
      |Fund Ratings       |
      |Commentary         |
# CREATE NEW SPACE OVERLAY-VERIFYING SUBMODULES-USER PREFERENCES
 #15
  @createnewspace
 Scenario: Create New Space overlay - Risk contains required submodules
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Risk"
    Then Verify module "Risk" contains submodules:
      |Risk Snapshot      |
      |VaR                |
      |Stress & Scenario  |
      |Sensitivity        |
      |VaR Return Envelope|
      |Exposure           |
      |Risk vs. Return    |
 #16
  @createnewspace
  Scenario: Create New Space overlay - Perfomance contains required submodules
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Performance"
    Then Verify module "Performance" contains submodules:
      |Performance Decomposition        |
      |Performance Snapshot             |
      |Statistics                       |
      |Style                            |
      |Benchmark Up/Down                |
      |Monthly Performance Distribution |
  #17
  @createnewspace
Scenario: Create New Space overlay - Admin contains required submodules
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Admin"
    Then Verify module "Admin" contains submodules:
      |Data Monitor     |
  ## Verifying elements after success login
#18
  @pdf
 Scenario: Login with valid credentials- All required elements should be displayed
    Then "Company" logo should be displayed
    Then "Plus" button to create new work should be displayed
    Then "My Profile" icon should be displayed
    Then 'ADD MODULE' button should be displayed
    Then 'DOWNLOAD PDF' button should be displayed
#    Then An icon in blue color should be displayed on right side of portal for my alerts -??
#    Then Welcome,[User Name] string should be displayed on right side of portal-??
#19
## "ADD MODULE "  overlay
  @addmodule
  Scenario: Validate Add module contains required columns
    Then Click on 'ADD MODULE' button
    Then "ADD MODULE" overlay should display columns:
      |01. MODULE|
      |02. ADD MODULE(S)|
      |03. YOUR MODULE QUEUE|
     Then Close Add module overlay
#20
  @addmodule
  Scenario: Validate Add module MODULE column contains
    Then Click on 'ADD MODULE' button
    Then "MODULE" column should contains submodules:
      |General    |
      |Performance|
      |Risk       |
      |Admin      |

#21
  @addmodule
  Scenario:  Validate Add module - MODULE column - General - contains required submodules
    Then Click on 'ADD MODULE' button
    Then In 'ADD MODULE' click on submodule "General"
    Then Module "General" contains submodules:
    |Documents          |
    |Fund Summary       |
    |Fund Ratings       |
    |Commentary         |

 #22
  @addmodule
  Scenario:  Validate Add module - MODULE - Risk - column contains required submodules
    Then Click on 'ADD MODULE' button
    Then In 'ADD MODULE' click on submodule "Risk"
    Then Module "Risk" contains submodules:
      |Risk Snapshot      |
      |VaR                |
      |Stress & Scenario  |
      |Sensitivity        |
      |VaR Return Envelope|
      |Exposure           |
      |Risk vs. Return    |

 #23
  @addmodule
 Scenario:  Validate Add module - MODULE - Performance - column contains required submodules
   Then Click on 'ADD MODULE' button
   Then In 'ADD MODULE' click on submodule "Performance"
   Then Module "Performance" contains submodules:
     |Performance Decomposition        |
     |Performance Snapshot             |
     |Statistics                       |
     |Style                            |
     |Benchmark Up/Down                |
     |Monthly Performance Distribution |
  #24
  @pdf
  Scenario: Validate PDF download contains required columns and close button functionality
    Then Click on 'PDF download' button
    Then "Download PDF" overlay should have columns:
      |01. REPORT TYPE      |
      |02. PORTFOLIO / FUNDS|
      |03. YOUR LIST        |
    Then Close 'PDF download' overlay

  #25
  @pdf
   Scenario: Validate PDF download - Report types
     Then Click on 'PDF download' button
     Then "REPORT TYPE" should contains submodules:
       |Standard Report  |
       |Basic Report     |
       |Standard HPC     |
       |Limit Report     |
       |Custom Report    |

  Scenario: Create new space - General  - add preferences
     Then Tap on "plus" button
     Then Enter "Test1" workspace name
     Then In "Create a New Space" click on submodule "General"
     Then Click on all items from "ADD MODULE" column
     Then Verify all added submodules displayed in YOUR MODULE QUEUE
     Then Tap "Create Space" button on the "Create a new space" overlay
     Then Verify that all added modals displayed



