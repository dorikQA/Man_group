@risk_performanse_smoke
Feature: Risk & Performance Page
Background:
    Given Open the Man Group site
    Given Enter "modtestinternaloperationssuppo@gmail.com" password "Wsodtest1!" and pin "9876" and click "Login" button
#    Then Click "Profile" icon
#    Then Tap "Reset" button
@myportfolio_overlay
  Scenario:  Reset profile settings
    Then Click "Profile" icon
    Then Tap "Reset" button
#  CREATE NEW SPACE
@createnewspace_overlay
  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog
    Then Tap on "plus" button
    Then Verify "Create a New Space" overlay opens
    Then Tap "close" button on the "Create a new space" overlay
    Then "Create a New Space" overlay should be closed
#3
@createnewspace_overlay
  Scenario: Creating the Work Space - Create Space WITHOUT the name check the name
    Then Tap on "plus" button
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then "Name your space" tab should exists
    Then Just created "Name your space" tab should be active
#4
@createnewspace_overlay
  Scenario: Creating the Work Space - Create Space WITH the name check the name
    Then Tap on "plus" button
    Then Enter "Test Automation" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then "Test Automation" tab should exists
 ## WORK SPACE DUPLICATE-REMOVE-RENAME FUNCTIONS
  #5
@ws_tabs
  Scenario: Checking the Work Space - Duplicate  functionality
    Then Tap on "plus" button
    Then Enter "Duplicate" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Duplicate"
    Then Click "Duplicate" in menu
    Then "copy of Duplicate" tab should exists
#6
  @ws_tabs
  Scenario: Checking the Work Space - Rename functionality
    Then Tap on "plus" button
    Then Enter "Rename me" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Rename me"
    Then Click "Rename" in menu
    Then Enter new name "Renamed WS" of workspace and press enter button
    Then "Renamed WS" tab should exists
 #7
@ws_tabs
  Scenario: Checking the Work Space - Remove functionality
    Then Tap on "plus" button
    Then Enter "Remove me" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Move mouse to "Remove me"
    Then Click "Remove" in menu
    Then WorkSpace "Remove me" should not be displayed
#8 #MY PORTFOLIO
@myportfolio_overlay
  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
    Then Click "Profile" icon
    Then Verify "My Profile" overlay contains subsections:
      |Contact Information |
      |Change Password     |
      |Language Selector   |
      |Preferences        |
#9
@myportfolio_overlay
  Scenario:  My Profile - Verify  subsections in Contact Information required subsections
    Then Click "Profile" icon
    Then Verify subsections in Contact Information:
      |Name       |
      |Email      |
      |Company    |
#10
@myportfolio_overlay
  Scenario: My Profile - Change Password contains required links
    Then Click "Profile" icon
    Then Verify Change Password contains links:
      |Click here to reset your password|
      |Click here to reset your pin     |

#11
@myportfolio_overlay
  Scenario: My Profile - Verify  Language Selector contains required languages
    Then Click "Profile" icon
    Then Verify Language Selector contains languages:
      |English  |

 #12
@myportfolio_overlay
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
@pdf_overlay
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
@addmodule_overlay
  Scenario: Validate Add module contains required columns
    Then Click on 'ADD MODULE' button
    Then "ADD MODULE" overlay should display columns:
      |01. MODULE|
      |02. ADD MODULE(S)|
      |03. YOUR MODULE QUEUE|
     Then Close Add module overlay
#20
@addmodule_overlay
  Scenario: Validate Add module MODULE column contains
    Then Click on 'ADD MODULE' button
    Then "MODULE" column should contains submodules:
      |General    |
      |Performance|
      |Risk       |
      |Admin      |
#21
@addmodule_overlay
  Scenario:  Validate Add module - MODULE column - General - contains required submodules
    Then Click on 'ADD MODULE' button
    Then In 'ADD MODULE' click on submodule "General"
    Then Module "General" contains submodules:
    |Documents          |
    |Fund Summary       |
    |Fund Ratings       |
    |Commentary         |
 #22
  @addmodule_overlay
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
@addmodule_overlay
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
@pdf_overlay
  Scenario: Validate PDF download contains required columns and close button functionality
    Then Click on 'PDF download' button
    Then "Download PDF" overlay should have columns:
      |01. REPORT TYPE      |
      |02. PORTFOLIO / FUNDS|
      |03. YOUR LIST        |
    Then Close 'PDF download' overlay

  #25
@pdf_overlay
   Scenario: Validate PDF download - Report types
     Then Click on 'PDF download' button
     Then "REPORT TYPE" should contains submodules:
       |Standard Report  |
       |Basic Report     |
       |Standard HPC     |
       |Limit Report     |
       |Custom Report    |

#26
@createnewspace_pref
  Scenario: Create new space - General  - add preferences
     Then Tap on "plus" button
     Then Enter "Test General Preference" workspace name
     Then In "Create a New Space" click on submodule "General"
     Then Click on all items from "ADD MODULE" column
     Then Verify all added submodules displayed in YOUR MODULE QUEUE
     Then Tap "Create Space" button on the "Create a new space" overlay
     Then Verify that all added modals displayed
#27
 @createnewspace_pref
  Scenario: Create new space - Perfomance  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Performance Preference" workspace name
    Then In "Create a New Space" click on submodule "Performance"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
#28
@createnewspace_pref
  Scenario: Create new space - Risk  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Risk Preference" workspace name
    Then In "Create a New Space" click on submodule "Risk"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
 @createnewspace_pref
  Scenario: Create new space - Admin  - add preferences
    Then Tap on "plus" button
    Then Enter "Test Admin Preference" workspace name
    Then In "Create a New Space" click on submodule "Admin"
    Then Click on all items from "ADD MODULE" column
    Then Verify all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all added modals displayed
 # 30
#  @createnewspace_pref
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
    Then Close "Terms and Conditions" via "close" button
    Then Click on "Security"
    Then Tap 'x' to close "Terms and Conditions"
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
#  @others
#   1 Scenario: Man Group Logo in bottom right corner - redirection
#   2 Scenario: User able to sign out

#
#     @pdf_overlay 1-9
#   1 Scenario: Download PDF Report - Standard report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
#   2 Scenario: Download PDF Report - Basic report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
#   3 Scenario: Download PDF Report - Standard HPC  report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
#   4 Scenario: Download PDF Report - Limit  report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
#   5 Scenario: Download PDF Report - Custom  report- Available Portfolio Funds - verify list of funds available (Any available)
#   6 Scenario: Download PDF Report - Select funds from PORTFOLIO/FUNDS - verify that same funds become displayed  in 03. YOUR LIST
#   7 Scenario: Download PDF Report - CUSTOM REPORT - select from - Available Portfolio Funds - verify that same funds become displayed  in YOUR LIST
#   8  Scenario: Download PDF Report -PDF Download functionality -verify that user can download report and it saved in PC folder
#   9  Scenario: Theme verification > Daybvs Night (My Profile>Preferences)
#
#
#  @left_rail 1-7
#   1 Scenario: Verify user can open - close left rail - user should see settings button, funds dropdown
#   2 Scenario: Left Rail > List of fund should be available in dropdown menu (check for present items >0)
#   3 Scenario: Left Rail > User can select any Fund>  Verify that same Fund bis displayed in dropdown title field and in
#   4 Scenario: Left rail > User select SHOW ALL FUNDS in drop down > List of all funds from dropdown list  are displayed
#   5 Scenario: Left Rail > Settings > Verify following options are  displayed :  Sort by (sorting options) -Show (show options) - Data(select ip to 4)(Data options) ) Save button-
#   6 Scenario: Left Rail > Setting > User can Select - Unselect options
#   7 Scenario: Left Rail > Setting > Save button closes settings
#
#  @ createnewspace_ MULTISELECTION 1 -3
#   1 Scenario: GENERAL  Multiselection verification - check the all selected modules on the work space
#              General - Documents - 4
#              General - Fund Summary - 4
#              General - Fund Raitings - 4
#              General - Commentary - 4
#
#    2 Scenario: PERFORMANCE - Multiselection verification - check the all selected modules on the work space
#       |Performance Decomposition        |					4|
#       |Performance Snapshot             |					4|
#       |Statistics                       |					4|
#       |Style                            |					4|
#       |Benchmark Up/Down                |					4|
#       |Monthly Performance Distribution |					4|
#
#   3 Scenario: RISK - Multiselection verification - check the all selected modules on the work space
#        |Risk Snapshot      |				4|
#        |VaR                |				4|
#        |Stress & Scenario  |				4|
#        |Sensitivity        |				4|
#        |VaR Return Envelope|				4|
#        |Risk vs. Return    |				4|
#
# @addmodule_overlay_MULTISELECTION 1-3
#   1 Scenario: GENERAL  Multiselection verification - check the all selected modules on the work space
#              General - Documents - 4
#              General - Fund Summary - 4
#              General - Fund Raitings - 4
#              General - Commentary - 4
#
#   2 Scenario: PERFORMANCE - Multiselection verification - check the all selected modules on the work space
#       |Performance Decomposition        |					4|
#       |Performance Snapshot             |					4|
#       |Statistics                       |					4|
#       |Style                            |					4|
#       |Benchmark Up/Down                |					4|
#       |Monthly Performance Distribution |					4|
#
#   3 Scenario: RISK - Multiselection verification - check the all selected modules on the work space
#        |Risk Snapshot      |				4|
#        |VaR                |				4|
#        |Stress & Scenario  |				4|
#        |Sensitivity        |				4|
#        |VaR Return Envelope|				4|
#        |Risk vs. Return    |				4|
#
# @addmodule_overlay_PREFERENCE 1-4
#   1 Scenario: ADD MODULE  - General  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test General Preference" workspace name
#    Then In "Create a New Space" click on submodule "General"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
#
#   2 Scenario:  ADD MODULE  - Perfomance  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Performance Preference" workspace name
#    Then In "Create a New Space" click on submodule "Performance"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
#
#  3 Scenario: ADD MODULE  - Risk  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Risk Preference" workspace name
#    Then In "Create a New Space" click on submodule "Risk"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
#
#  4 Scenario: ADD MODULE - Admin  - add preferences
#    Then Tap on "plus" button
#    Then Enter "Test Admin Preference" workspace name
#    Then In "Create a New Space" click on submodule "Admin"
#    Then Click on all items from "ADD MODULE" column
#    Then Verify all added submodules displayed in YOUR MODULE QUEUE
#    Then Tap "Create Space" button on the "Create a new space" overlay
#    Then Verify that all added modals displayed
#
#  fund_module
#
# @ fund_module_FUNCTIONALITY 1-12
#
#   1 Scenario:  Verify that following preferences contains  ACTIONS  (Export Data - Duplicate Module - Remove Module ) -Module size (MEDIUM -LARGE)
#              |List of preferences with Export Data - Duplicate Module - Remove Module |
#
#
#   2 Scenario:  Verify that following preferences contains ACTIONS  (REMOVE)
#              |List of preferences with just Remove Module |
#
#   3 Scenario:  Verify that following preferences contains ACTIONS  ( Duplicate Module - Remove Module )
#              |List of preferences with just Duplicate Module Remove Module |
#
#   4 Scenario: Verify that following preferences contains MODULE SIZE (Small Medium)
#              |List of preferences Small Medium                     |
#   5 Scenario: Verify that following preferences contains MODULE SIZE ( Medium Large )
#              |List of preferences Medium Large                    |
#   6 Scenario: Verify that following preferences contains MODULE SIZE (None)
#               | List of preferences without Module size options                         |
#   7 Scenario:   Functionality Export Data
#   8 Scenario:  Functionality Duplicate
#   9 Scenario:  Functionality  Remove
#   10 Scenario:  User sign out functionality
#   11 Scenario: Actions - Verify user can creates via Duplicate Module
#   12 Scenario: Actions - Verify user can creates via Remove Module
