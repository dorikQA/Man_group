Feature: Risk & Performance Page

  Background:
    Given Open the Man Group site
    Given Enter "InternalBasicAutomationMG@gmail.com" password "0ChangeMe0!1" and pin "9876" and click "Login" button
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
 #23
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

#26
  @new_space_pref
  Scenario: Create new space - General  - add preferences
     Then Tap on "plus" button
     Then Enter "Test General Preference" workspace name
     Then In "Create a New Space" click on submodule "General"
     Then Click on all items from "ADD MODULE" column
     Then Verify all added submodules displayed in YOUR MODULE QUEUE
     Then Tap "Create Space" button on the "Create a new space" overlay
     Then Verify that all added modals displayed
#27
  @new_space_pref
  Scenario: Create new space - Perfomance  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Performance Preference" workspace name
    Then In "Create a New Space" click on submodule "Performance"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
#28
  @new_space_pref
  Scenario: Create new space - Risk  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Risk Preference" workspace name
    Then In "Create a New Space" click on submodule "Risk"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
#29
  @new_space_pref
  Scenario: Create new space - Admin  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Admin Preference" workspace name
    Then In "Create a New Space" click on submodule "Admin"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
 # 30
  @new_space_pref
  Scenario: Create new space - Adding Random Preferences from all modules
    Then Tap on "plus" button
    Then Add random one preference from each module
    Then Enter "Random Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
    Then Click on 'ADD MODULE' button

  #31
  @add_module_pref
  Scenario: Add module- Add random preference
    Then Tap on "plus" button
    Then Enter "AddModule Random Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then In 'ADD MODULE' add random one preference from each module
    Then Tap "Add to Space" button on the "Create a new space" overlay
    Then Verify that preference from 'ADD MODULE' displayed
  #32
  @disclaimers
  Scenario: Verify Terms & conditions items at the bottom of RP page
    Then At the bottom of page list of terms should be displayed
    |Terms and Conditions|
    |Privacy Policy      |
    |Security            |
 #33
  @disclaimers
  Scenario: Verify content of disclaimers Terms and Conditions
    Then Click on "Terms and Conditions"
    Then Tap 'x' to close "Terms and Conditions"
    Then Click on "Terms and Conditions"
    And Disclaimer header should be 'Terms and Conditions of Use '
    And Disclaimer document should have bullets:
    |1. General                                 |
    |2. Restricted Access                       |
    |3. No Offer                                |
    |4. Monitoring by MSL                       |
    |5. No Commercial Exploitation              |
    |6. Responsibilities of User                |
    |7. Confidentiality                         |
    |8. No Warranties and Exclusion of Liability|
    |9. Portfolio Construction Tool             |
    |10. Investment Performance                 |
    |11. No Reliance                            |
    |12. Miscellaneous                          |
    |13. Jurisdiction                           |
    |14. Viruses, Hacking and other offences    |
    |15. Changes to the Site                    |
    Then Close "Terms and Conditions" via "close" button


#34
  @disclaimers
  Scenario: Verify content of disclaimers Privacy Policy
    Then Click on "Privacy Policy"
    Then Close "Terms and Conditions" via "close" button
    Then Click on "Privacy Policy"
    Then Tap 'x' to close "Terms and Conditions"
    And Disclaimer header should be '16. Privacy and Data Protection'
    And Disclaimer document should have bullets:
     |Data protection|
     |Cookies|

#35
  @disclaimers
  Scenario: Verify content of disclaimers Security
    Then Click on "Security"
#    Then Close "Terms and Conditions" via "close" button
#    Then Click on "Security"
    #Then Tap 'x' to close "Terms and Conditions"
    And Disclaimer header should be 'Security'
    And Disclaimer document should have bullets:
    |Scam e-mails and fake websites|
    And List of official following websites should be:
      |https://clarus.man.com       |
      |www.ahl.com                 |
      |www.frmhedge.com             |
      |www.glgpartners.com          |
      |www.man.com                  |
      |www.mangroupplc.com          |
      |www.maninvestments.com       |
      |www.maninvestments.com.au    |
      |www.pembacreditadvisers.com  |

#
#   1 Scenario: PDF Report - Check the 02.PORTFOLIO/FUNDS (Any available)
#
#   2 Scenario: PDF Report - Select fund in Check the 02.PORTFOLIO/FUNDS  verify that fund in 03. YOUR LIST
#
#   3 Scenario: PDF Report - PDF Download functionality
#
#   4  Scenario: Theme verification > Daybvs Night (My Profile>Preferences)
#
#   5  Scenario: Admin >  Left Rail > Embargoed Portfolios/Funds and Non-Embargoed Portfolios/Funds dropdown menu
##              Embargoed Portfolios/Funds
#               Non-Embargoed Portfolios/Funds
#   6  Scenario: Left Rail > Settings > Verification
#
#   7  Scenario: Admin > Dipslay Embargoed Date checkbox available
#
#   8  Scenario: Admin > Vehicle selection dropdown > check for present items >0
#
#   9   Scenario: General Multiselection verification - check the all selected modules on the work space
#  General - Documents - 4
#  General - Fund Summary - 4
#  General - Fund Raitings - 4
#  General - Commentary - 4
#
#   10 Scenario: Performance Multiselection verification - check the all selected modules on the work space
#       |Performance Decomposition        |					4
#       |Performance Snapshot             |					4
#       |Statistics                       |					4
#       |Style                            |					4
#       |Benchmark Up/Down                |					4
#       |Monthly Performance Distribution |					4
#
#   11 Scenario: Risk Multiselection verification - check the all selected modules on the work space
#        |Risk Snapshot      |				4
#        |VaR                |				4
#        |Stress & Scenario  |				4
#        |Sensitivity        |				4
#        |VaR Return Envelope|				4
#        |Exposure           |				4
#        |Risk vs. Return    |				4
#    12
#  Scenario: Create new space - General  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test General Preference" workspace name
#    Then In "Create a New Space" click on submodule "General"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
##13
#  @new_space_pref
#  Scenario: Create new space - Perfomance  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Performance Preference" workspace name
#    Then In "Create a New Space" click on submodule "Performance"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
##14
#  @new_space_pref
#  Scenario: Create new space - Risk  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Risk Preference" workspace name
#    Then In "Create a New Space" click on submodule "Risk"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
##15
#  @new_space_pref
#  Scenario: Create new space - Admin  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Admin Preference" workspace name
#    Then In "Create a New Space" click on submodule "Admin"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
#
#   16 Dropdown Items Actions (Export Data- Duplicate_ Remove) -Module size (MEDIUM -LARGE)
#  17  Functionality Export Data
#  18 Functionality Duplicate
#   19 Functionality  Remove
#   20 User sign out functionality
#
#  # 21  Scenario: Man Group Logo in bottom right corner - redirection
#                 Check the redirection on Man Group Page
#


#
#
#
#
#
#
