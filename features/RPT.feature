@risk_performanse_smoke
Feature: Risk & Performance Page
Background:
    Given Open the Man Group site
    Given Enter "pctusertests@gmail.com" password "0ChangeMe0!" and pin "9876" and click "Login" button
    Then Click "Profile" icon
    Then Tap "Reset" button
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
## "ADD MODULE "  overlay
  #19
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
    #Then Click on 'ADD MODULE' button

  #31
  @add_module_pref
  Scenario: Add module- Add random preference
    Then Tap on "plus" button
    Then Enter "AddModule Random Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then In 'ADD MODULE' add random one preference from each module
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that all preference from 'ADD MODULE' displayed
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
    And Disclaimer header should be 'Privacy and Data Protection'
    And Disclaimer document should have bullets:
     |Data protection|
     |Cookies|
    Then Tap 'x' to close "Terms and Conditions"

#35
  @disclaimers
  Scenario: Verify content of disclaimers Security
    Then Click on "Security"
    Then Close "Terms and Conditions" via "close" button
    Then Click on "Security"
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

    Then Tap 'x' to close "Terms and Conditions"

    ##sprint 03/04
# @ @add_module_pref 1-4
#   1
  @addmodulepref
  Scenario: ADD MODULE  - General  - add preferences
    Then Tap on "plus" button
    Then Enter "AM General Preference" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "General"
    Then In "Add Module" overlay click on all items from "ADD MODULE" column
    Then Verify in "Add Module" all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that all added modals displayed
#   2
  @addmodulepref
  Scenario:  ADD MODULE  - Perfomance  - add preferences
    Then Tap on "plus" button
    Then Enter "AM Performance Preference" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Performance"
    Then In "Add Module" overlay click on all items from "ADD MODULE" column
    Then Verify in "Add Module" all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that all added modals displayed
#  3
  @addmodulepref
  Scenario: ADD MODULE  - Risk  - add preferences
    Then Tap on "plus" button
    Then Enter "AM Risk Preference" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Risk"
    Then In "Add Module" overlay click on all items from "ADD MODULE" column
    Then Verify in "Add Module" all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that all added modals displayed
#  4
  @addmodulepref
  Scenario: ADD MODULE - Admin  - add preferences
    Then Tap on "plus" button
    Then Enter "AM Admin Preference" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Admin"
    Then In "Add Module" overlay click on all items from "ADD MODULE" column
    Then Verify in "Add Module" all added submodules displayed in YOUR MODULE QUEUE
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that all added modals displayed

# add_module_overlay_MULTISELECTION 1-3
   #1
  @addmodulepref
  Scenario: ADD MODULE -GENERAL  Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then Enter "AM General Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "General"
    And Add click on oll items in add modules column  4 times
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that selected modules from "Add module" were created 4 times
#    |Documents   |
#    |Fund Summary|
#    |Fund Rating |
#    |Commentary  |
#2 add_module_overlay_MULTISELECTION
  @addmodulepref
  Scenario: ADD MODULE- PERFORMANCE - Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then Enter "AM Performace Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Performance"
    And  Add click on oll items in add modules column  4 times
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that selected modules from "Add module" were created 4 times
#       |Performance Decomposition        |
#       |Performance Snapshot             |
#       |Statistics                       |
#       |Style                            |
#       |Benchmark Up/Down                |
#       |Monthly Performance Distribution |
#3 add_module_overlay_MULTISELECTION
  @addmodulepref
  Scenario: ADD MODULE - RISK - Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then Enter "AM Risk Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Risk"
    And  Add click on oll items in add modules column  4 times
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that selected modules from "Add module" were created 4 times
#        |Risk Snapshot      |
#        |VaR                |
#        |Stress & Scenario  |
#        |Sensitivity        |
#        |VaR Return Envelope|
#        |Risk vs. Return    |
#4 add_module_overlay_MULTISELECTION
  @addmodulepref
  Scenario: ADD MODULE - Admin - Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then Enter "AM Multi Risk Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Click on 'ADD MODULE' button
    Then From "Add Module" click on submodule "Admin"
    And  Add click on oll items in add modules column  4 times
    Then Tap "Add to Space" button on the "Add Module" overlay
    Then Verify that selected modules from "Add module" were created 4 times
  #      |Data Monitor|
  #  @ createnewspace_ MULTISELECTION 1 -4
#   1
  @createnewspace
  Scenario: CREATE SPACE - GENERAL  Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "General"
    And  In "Create Space" overlay click all items from "ADD MODULE" column  4 times
    Then Enter "CS Multi General Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all modules from "Create work space" modules were created 4 times
#    |Documents   |
#    |Fund Summary|
#    |Fund Rating |
#    |Commentary  ||
#2 createnewspace_ MULTISELECTION
  @createnewspace
  Scenario: CREATE SPACE - PERFORMANCE  Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Performance"
    And  In "Create Space" overlay click all items from "ADD MODULE" column  4 times
    Then Enter "CS Multi Performance Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all modules from "Create work space" modules were created 4 times
#       |Performance Decomposition        |
#       |Performance Snapshot             |
#       |Statistics                       |
#       |Style                            |
#       |Benchmark Up/Down                |
#       |Monthly Performance Distribution |
#3 createnewspace_ MULTISELECTION
  @createnewspace
  Scenario: CREATE SPACE - RISK -  Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Risk"
    And  In "Create Space" overlay click all items from "ADD MODULE" column  4 times
    Then Enter "CS Multi Risk Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all modules from "Create work space" modules were created 4 times
#        |Risk Snapshot      |
#        |VaR                |
#        |Stress & Scenario  |
#        |Sensitivity        |
#        |VaR Return Envelope|
#        |Risk vs. Return    |
#4 createnewspace_ MULTISELECTION
  @createnewspace
  Scenario: CREATE SPACE - Admin -  Multiselection verification - check the all selected modules on the work space
    Then Tap on "plus" button
    Then In "Create a New Space" click on submodule "Admin"
    And  In "Create Space" overlay click all items from "ADD MODULE" column  4 times
    Then Enter "CS Admin Preferences" workspace name
    Then Tap "Create Space" button on the "Create a new space" overlay
    Then Verify that all modules from "Create work space" modules were created 4 times
#         |Data Monitor|
#
#  @others
  #1
   Scenario: Man Group Logo in bottom right corner - redirection
     Then Click on Man Group icon
     Then Verify that user redirected on the ManGroup site

#   2
   Scenario: User able to sign out
     Then Click "Profile" icon
     Then Click button "Sign out"
     Then Verify User is on login page

#1
  @pdfoverlay
  Scenario: Download PDF Report - Standard report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
      Then Click on 'PDF download' button
      Then From "Report type" click on "Standard Report"
      Then "Standard Report" should have list of funds
#2
  @pdfoverlay
  Scenario: Download PDF Report - Basic report- PORTFOLIO/FUNDS - verify list of funds available (Any available)
    Then Click on 'PDF download' button
    Then From "Report type" click on "Basic Report"
    Then "Basic Report" should have list of funds
#3
  @pdfoverlay
  Scenario: Download PDF Report - Standard HPC report -  verify list of funds available (Any available)
    Then Click on 'PDF download' button
    Then From "Report type" click on "Standard HPC"
    Then "Standard HPC" should have list of funds
#4
  @pdfoverlay
  Scenario: Download PDF Report - Limit report - verify list of funds available (Any available)
    Then Click on 'PDF download' button
    Then From "Report type" click on "Limit Report"
    Then "Limit Report" should have list of funds
#5
  @pdfoverlay
  Scenario: Download PDF Report - Custom Report  - verify list of funds available (Any available)
    Then Click on 'PDF download' button
    Then From "Report type" click on "Custom Report"
    Then SELECTED FUNDS section should have list of funds

# 6  # Fail because not all report contain list of Funds
  @pdfoverlay
  Scenario: Download PDF Report - Select RANDOM FUNDS FROM EACH REPORT  verify that same funds become displayed  in 03. YOUR LIST
    Then Click on 'PDF download' button
    Then Add random fund from each report
     Then Verify the same Fund were added to YOUR LIST column
# 7
  @pdfoverlay
  Scenario: Download PDF Report - Select funds from Standard Report - verify that same funds become displayed  in 03. YOUR LIST
    Then Click on 'PDF download' button
    Then From "Report type" click on "Standard Report"
    Then Click on 5 funds from FUNDS column
    Then Verify the same Fund were added to YOUR LIST column
 #8
  @pdfoverlay
  Scenario: Download PDF Report - Select funds from Basic Report - verify that same funds become displayed  in 03. YOUR LIST
    Then Click on 'PDF download' button
    Then From "Report type" click on "Basic Report"
    Then Click on 5 funds from FUNDS column
    Then Verify the same Fund were added to YOUR LIST column
 #9
  @pdfoverlay
  Scenario: Download PDF Report - Select funds from Standard Report - verify that same funds become displayed  in 03. YOUR LIST
    Then Click on 'PDF download' button
    Then From "Report type" click on "Standard HPC"
    Then Click on 5 funds from FUNDS column
    Then Verify the same Fund were added to YOUR LIST column
  #10
  @pdfoverlay
  Scenario: Download PDF Report - Select funds from Limit Report - verify that same funds become displayed  in 03. YOUR LIST
    Then Click on 'PDF download' button
    Then From "Report type" click on "Limit Report"
    Then Click 1 fund from FUNDS column
    Then Verify the same Fund were added to YOUR LIST column

# 11  Doesn't work because custom overlay becomes smaller after Selenium click on Custom Report
  @pdfoverlay
  Scenario: Download PDF Report - Select funds from CUSTOM REPORT -- Available Portfolio Funds - verify that same funds become displayed  in YOUR LIST
    Then Click on 'PDF download' button
    Then From "Report type" click on "Custom Report"
    #Then From "Report type" click on "Custom Report"
    Then Remove Funds that selected by default
    Then Select 4 funds from SELECT FUNDS column
    Then Verify that custom YOUR list  displays selected funds


#   8   Scenario: Download PDF Report -PDF Download functionality -verify that user can download report and it saved in PC folder

#@others

#   9  Scenario: Theme verification > Daybvs Night (My Profile>Preferences)
  @theme
  Scenario:My Profile - Verify  Theme Styles
    Then Click "Profile" icon
    Then Open "Preferences" submenu
    Then Click "Day" theme style
    And  Verify Theme has "day" style
    Then Click "Profile" icon
    Then Open "Preferences" submenu
    Then Click "Night" theme style
    And  Verify Theme has "night" style


#  @left_rail 1-7
#   1
Scenario: Verify user can open - close left rail - user should see settings button, funds dropdown
  Then Open left rail menu
  Then Verify settings button, funds dropdown, preference menu are visible
  Then Close left rail menu
  Then Verify Left rail was closed






#   2 Scenario: Left Rail > List of fund should be available in dropdown menu (check for present items >0)
#   3 Scenario: Left Rail > User can select any Fund>  Verify that same Fund bis displayed in dropdown title field and in
#   4 Scenario: Left rail > User select SHOW ALL FUNDS in drop down > List of all funds from dropdown list  are displayed
#   5 Scenario: Left Rail > Settings > Verify following options are  displayed :  Sort by (sorting options) -Show (show options) - Data(select ip to 4)(Data options) ) Save button-
#   6 Scenario: Left Rail > Setting > User can Select - Unselect options
#   7 Scenario: Left Rail > Setting > Save button closes settings
#


#  fund_module
#
# @ fund_module_FUNCTIONALITY 1-12
#
#   1 Scenario:  Verify that following preferences contains  ACTIONS  (Export Data - Duplicate Module - Remove Module ) -Module size (MEDIUM -LARGE)
#              |List of preferences with Export Data - Duplicate Module - Remove Module |
#
##   2 Scenario:  Verify that following preferences contains ACTIONS  (REMOVE)
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
#   7 Scenario:  Functionality Export Data
#   8 Scenario:  Functionality Duplicate
#   9 Scenario:  Functionality  Remove
#   10 Scenario: User sign out functionality
#   11 Scenario: Actions - Verify user can creates via Duplicate Module
#   12 Scenario: Actions - Verify user can creates via Remove Module

  #eeee






