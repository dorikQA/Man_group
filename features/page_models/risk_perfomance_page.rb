class RiskPerfomancePage

  def profile_icon
    begin
      $wait.until {$driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")}
    rescue
    Selenium::WebDriver::Error::ElementNotVisibleError
    puts "Can't reach element"
  end
  end
  def reset_button(button)
    begin
    $wait.until {$driver.find_element(:xpath, "//button[@type = 'button' and text() = '#{button}']")}
    rescue
      Selenium::WebDriver::Error::ElementNotVisibleError
      puts "Can't reach element"
    end
  end
  def plus_workspace_button
    begin
        $wait.until {$driver.find_element(:xpath,"//a[@class = 'nav-tab' and text() = '+']")}
    rescue
      Selenium::WebDriver::Error::ElementNotVisibleError
      puts "Can't find element to reach element"
    end
  end
  def workspace_overlay(create_newspace_overlay)
    sleep 4
    $driver.find_element(:xpath, "//span[@class = 'ui-dialog-title' and text() = '#{create_newspace_overlay}']")

  end
  def create_space_buttons(button_name)
    buttons = $driver.find_elements(:xpath,"//span[@class = 'ui-button-text' and text() = '#{button_name}']")
    sleep 2
    for i in buttons
      if i.displayed?
        i.click
        break
      else
        raise "Can't find this button '#{button_name}' visible"
      end
    end
  end
  def work_space_tab_name(workspace_name)
    $driver.find_elements(:xpath,"//a[@class = 'nav-tab' and contains(text(), '#{workspace_name}')]")
  end
  def active_work_space_tab (workspace_name)
    wsactives = $driver.find_elements(:xpath, "//li[@class = 'active']/a[contains(@title,'#{workspace_name}')]")
    if wsactives.count > 0
      puts "TC passed. '#{workspace_name}' was created and it's active"
    else raise "TC Failed. WS was not created or it's not active"
    end
  end
  def enter_spacename_field
    $wait.until {$driver.find_element(:xpath, "//input[@class = 'workspace-name']")}
    # begin
    # sleep 3
    # $wait.until {$driver.find_element(:xpath, "//input[@class = 'workspace-name']")}
    # rescue
    #   Selenium::WebDriver::Error::ElementNotVisibleError
    #   puts "Can't reach element"
    # end
  end
  def workspace(ws)
   $driver.find_element(:xpath, "//a[@class = 'nav-tab' and text() = '#{ws}']")
  end
  def actions(action)
    $driver.find_elements(:xpath, "//div[@class = 'menu']//span[contains(text(), '#{action}')]")
  end
  def renamefield
    $driver.find_element(:xpath, "//input[@class = 'rename-input']")
  end
  def create_space_submodule_name(modules)
    begin
    $wait.until {$driver.find_element(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{modules}']")}
    rescue Selenium::WebDriver::Error::NoSuchElementError
    raise "Element #{modules} is not displayed"
    end
  end
  def my_profile_submenu(submodule_text)
    $driver.find_element(:xpath, "//h3[text() = '#{submodule_text}']")
  end

  def my_profile_section_content(content_text)
  array = $driver.find_elements(:xpath,"//td[text() = '#{content_text}']")
  if array.size == 0
    fail "Can't find  #{content_text}"
  else return array[0]
  end
  end
  def my_profile_changepassword(link_name)
  sleep 2
    array = $driver.find_elements(:xpath,"//span[contains(.,'#{link_name}')]")
     if array.size == 0
      fail "Can't find  #{link_name}"
    else return array[0]
    end
  end
  def my_profile_languageselector(language)
    array = $driver.find_elements(:xpath,"//tr[contains(.,'Language')]//span[contains(.,'#{language}')]")
    if array.size == 0
      fail "Can't find  #{language}"
    else return array[0]
    end
  end
  def my_profile_theme(theme)
    array = $driver.find_elements(:xpath,"//div[contains(@class,'content clearfix')][./p[contains(.,'Choose a theme style')]]//label[text() = '#{theme}']")
    if array.size == 0
      fail "Can't find  #{theme}"
    else return array[0]
    end
  end
  def newspace_module_column(column_name)
   array = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{column_name}']")
   if array.size == 0
     fail "Can't find  #{column_name}"
   else return array[0]
   end
  end
  def newspace_addmodule_column(module_name)
   array = $driver.find_elements(:xpath,"//div[@id = 'AddWorkspaceModal']//ul[@class = 'app-options appSourceList']//a[text() = '#{module_name}']")
   if array.size == 0
     fail "Can't find  #{module_name}"
   else return array[0]
   end
  end
  def company_logo
    $driver.find_element(:id, "ClientLogo")
  end
  def add_module_button
  begin
    $wait.until {$driver.find_element(:id, "AddModuleButton")}
  rescue
    Selenium::WebDriver::Error::ElementNotVisibleError
    puts "Can't reach element"
  end
  end
  def download_pdf_button
    begin
      $wait.until {$driver.find_element(:id, "DownloadPDFButton")}
    rescue
      Selenium::WebDriver::Error::ElementNotVisibleError
      puts "Can't reach element"
    end
  end
  def addmodule_overlay_column_name(column_name)
    array = $driver.find_elements(:xpath, "//div[@id = 'AddModuleModal']//h5[contains(text(), '#{column_name}')]")
    if array.size == 0
      fail "Can't find  #{column_name}"
    end
  end
  def modulecolumn_submodule_name(modulecolumn_submodule_name)
    $driver.find_element(:xpath, "//div[@id = 'AddModuleModal']//ul[@class = 'nav-options']//a[text() = '#{modulecolumn_submodule_name}']")
  end
  def addmodule_modulecolumn_submodule(modulecolumn_submodule_name)
   array = $driver.find_elements(:xpath, "//div[@id = 'AddModuleModal']//ul[@class = 'nav-options']//a[text() = '#{modulecolumn_submodule_name}']")
   if array.size == 0
     fail "Can't find  #{modulecolumn_submodule_name}"
   else return array[0]
   end
   end
  def addmodule_addmodules_submodule(submodule_name)
    array = $driver.find_elements(:xpath, "//div[@id = 'AddModuleModal']//ul[@class = 'app-options appSourceList']//a[text() = '#{submodule_name}']")
    if array.size == 0
      fail "Can't find  #{submodule_name}"
    else return array[0]
    end
  end
  def pdf_overlay_column_name(column_name)
     array = $driver.find_elements(:xpath, "//div[@id = 'DownloadPDFModal']//h5[text() = '#{column_name}']")
     if array.size == 0
       fail "Can't find  #{column_name}"
     else  return array[0]
     end
   end
  def pdf_modulecolumn_submodule(reporttype)
    sleep 3
  array = $driver.find_elements(:xpath, "//div[@id = 'DownloadPDFModal']//ul[@class = 'nav-options']//*[contains(text(), '#{reporttype}')]")
  if array.size == 0
    fail "Can't find  #{reporttype}"
  else return array[0]
  end
  end
  def close_button
    sleep  4
    begin
      close_buttons = $driver.find_elements(:xpath,"//div[contains(@class, 'ui-dialog-titlebar')]//button[@title = 'close']")
    rescue
      Selenium::WebDriver::Error::ElementNotVisibleError
      puts "Can't reach element"

    end
    close_buttons_active = []
    close_buttons.each do |button|
      if button.displayed?
        close_buttons_active.push(button)
      end
    end
    return close_buttons_active[0]
  end
  def ws_addmodules
    $driver.find_elements(:xpath, "//div[@id = 'AddWorkspaceModal']//div[@class = 'app-options-container clearfix']//a")
  end

  def ws_queue
    $driver.find_elements(:xpath, "//div[@id = 'AddWorkspaceModal']//div[@class = 'chosen-app-options-container']//a[text()]")
  end
  def displayed_moduls
    $driver.find_elements(:xpath,"//div[@ class= 'app-header clearfix']//div[@class = 'pull-left touch-drag']")
  end
  def module_modulename
    $driver.find_elements(:xpath,"//div[@id = 'AddWorkspaceModal']//div[@class  = 'nav-options-container clearfix']//a")

  end
  def queue_item_list
    selcteditems= risk_perfomance_page.ws_queue
    selcteditemstext = []
    for i in selcteditems
      selcteditemstext.push(i.text)
    end
    return selcteditemstext
  end
  def displyed_modules_list
    sleep 5
    displayed_moduls = risk_perfomance_page.displayed_moduls
    displayed_moduls_text = []
    for i in displayed_moduls
      displayed_moduls_text.push(i.text)
    end
    return displayed_moduls_text
  end

  def random_click_preference
    modules = risk_perfomance_page.module_modulename
    modules.each do |x|
      x.click
      items  = risk_perfomance_page.ws_addmodules
      itemstext = []
      for i in items
        if i.displayed?
          itemstext.push(i)
          # i.click

        end
      end
      itemstext.sample.click
    end

  end


  def am_module_module_name
    $driver.find_elements(:xpath,"//div[@id = 'AddModuleModal']//div[@class  = 'nav-options-container clearfix']//a")
  end
  def am_addmodules
    $driver.find_elements(:xpath, "//div[@id = 'AddModuleModal']//div[@class = 'app-options-container clearfix']//a")
  end
  def am_random_click_preference
    sleep 5
    modules = risk_perfomance_page.am_module_module_name
    modules.each do |x|
      x.click
      items  = risk_perfomance_page.am_addmodules
      itemstext = []
      for i in items
        if i.displayed?
          itemstext.push(i)
          # i.click
        end
      end
      itemstext.sample.click
    end
  end
  def am_queue
    $driver.find_elements(:xpath, "//div[@id = 'AddModuleModal']//div[@class = 'chosen-app-options-container']//a")
  end
  def am_queue_item_list
    selcteditems= risk_perfomance_page.am_queue
    selcteditemstext = []
    for i in selcteditems
      selcteditemstext.push(i.text)
    end
    return selcteditemstext
  end
  def disclaimers(disclaimer_name)
    begin
      $wait.until {$driver.find_element(:xpath, "//a[contains(@class, 'disclaimer') and text() = '#{disclaimer_name}']")}
    rescue Selenium::WebDriver::Error::NoSuchElementError
    raise "'#{disclaimer_name}' was not found"
    end
  end
  def disclaimer(disclaimer_name)
    $driver.find_element(:xpath, "//a[contains(@class, 'disclaimer') and text() = '#{disclaimer_name}']")
  end
  def close_disclaimer_button
    $driver.find_element(:xpath,"//div[@class = 'ui-dialog-buttonset']/button")
  end
  def close_disclaimer_top_button
    sleep 5
    $driver.find_element(:xpath,"//div[contains(@class, 'ui-dialog-titlebar')]//button[@title = 'Close']")
  end
  def disclaimer_name_content_header(disclaimer_header)
    begin
      $wait.until {$driver.find_element(:xpath,"//div[@class = 'disclaimer-content']/h1[contains(., '#{disclaimer_header}')]")}
    rescue
      if Selenium::WebDriver::Error::NoSuchElementError || Selenium::WebDriver::Error::InvalidSelectorError
     raise "'#{disclaimer_header}' was not found"
      elsif Selenium::WebDriver::Error::TimeOutError
     raise "timed out after 30 seconds.'#{disclaimer_header}' was not found"
      end
   end
  end
  def disclaimer__boolets(disclaimer_bullets)
    begin
      $wait.until {$driver.find_element(:xpath,"//div[@class = 'disclaimer-content']/h2[contains(text(), '#{disclaimer_bullets}')]")}
    rescue
      if Selenium::WebDriver::Error::NoSuchElementError || Selenium::WebDriver::Error::TimeOutError
        raise "'#{disclaimer_bullets}' was not found"
      elsif  Selenium::WebDriver::Error::TimeOutError
        raise "Timed out after 30 seconds.Unable to locate element '#{disclaimer_bullets}'"
      end
    end
  end
  def disclaimer_link(disclaimer_links)
    begin
      $wait.until {$driver.find_element(:xpath,"//div[@class = 'disclaimer-content']//a[text() = '#{disclaimer_links}']")}
    rescue Selenium::WebDriver::Error::NoSuchElementError
      raise "'#{disclaimer_links}' was not found"
     end
  end
  def add_module_submodule_name(modules)
    begin
      $wait.until {$driver.find_element(:xpath,"//div[@id = 'AddModuleModal']//div[@class  = 'nav-options-container clearfix']//a[text() = '#{modules}']")}
    rescue
      if Selenium::WebDriver::Error::NoSuchElementError
      raise "Element #{modules} is not displayed"
      elsif Selenium::WebDriver::Error::ElementNotVisibleError
        raise "Element #{modules} is not displayed"
      end

    end
  end
  def addtospace_buttons(button_name)
    buttons = $driver.find_elements(:xpath,"//span[@class = 'ui-button-text' and text() = '#{button_name}']")
    sleep 2
    for i in buttons
      if i.displayed?
        i.click
        break
      else
        raise "Can't find this button '#{button_name}' visible"
      end
    end
  end
  def man_group_logo
    $driver.find_element(:xpath,"//div[@class = 'pull-right footer-logo-container']")
  end
  def man_group_site
    $driver.find_elements(:xpath, "//title[contains(text(), 'Welcome to www.man.com')]")
  end
  def sign_out_button
    $wait.until {$driver.find_element(:xpath, "//a[@class = 'ui-dialog-signout']")}
  end
  def login_page_elements
    if $driver.find_element(:xpath, "//div[@class = 'login-ui-icon MG_PageHeader']") && $driver.find_element(:xpath,"//button[@class = 'ui-button login-button']")
      begin
      rescue Selenium::WebDriver::Error::NoSuchElementError
      raise "'User is not on login page'. Login page elements were not found"
      end
    puts "User was redirected on login page"
    end
  end
  def pdf_reporttype_name(report)
     begin
       $wait.until {$driver.find_element(:xpath,"//div[@id = 'DownloadPDFModal']//ul[@class = 'nav-options']//*[contains(text(), '#{report}')]")}
    rescue Selenium::WebDriver::Error::NoSuchElementError
      raise "Element #{report} is not displayed"
    end
  end
def pdf_reporttype_list
  $driver.find_elements(:xpath, "//div[@id = 'DownloadPDFModal']//ul[@class = 'nav-options']//*[text()]")
end
  def pdf_displayed_funds_list
    pdf_list = []
    elements = $driver.find_elements(:xpath, "//div[@id = 'DownloadPDFModal']//div[@class = 'app-options-container clearfix']//a[text()]")
    sleep 3
    for i in elements
      if i.displayed?
       pdf_list.push(i)
      end
    end
    return  pdf_list
  end
  def pdf_custom_vehicles

    $driver.find_elements(:xpath,"//ul[@class= 'custom-pdf-select-vehicles-list']//a")
  end
  def pdf_custom_added_fund
    $driver.find_elements(:xpath,"//div[@class = 'custom-pdf-your-list-container']//a")
  end

   def random_click_report_fund
    reports = risk_perfomance_page.pdf_reporttype_list
    reports2 = reports.pop
    reports.each do |a|
      a.click
      funds  = risk_perfomance_page.pdf_displayed_funds_list.sample.click
    end
  end
  def pdf_selected_funds
  $driver.find_elements(:xpath, "//div[@class = 'app-options-container clearfix']//li[@class = 'app-option touch-click app-option-added']//a")
  end
  def pdf_custom_report_selected_funds
    $driver.find_elements(:xpath, "//div[@class = 'custom-pdf-vehicle-list-container']//li[@class = 'app-option touch-click app-option-added']//a")
  end
  def pdf_yourfunds_list
    elements = $driver.find_elements(:xpath,"//div[@id = 'DownloadPDFModal']//li[@class = 'chosen-app']//a")
  end
  def pdf_remove_fund_buttons
    $driver.find_elements(:xpath, "//div[@class = 'custom-pdf-your-list-container']//span[@class = 'touch-click icon icon-white-x']")
  end
  def pdf_remove_funds_from_list
    buttons = risk_perfomance_page.pdf_remove_fund_buttons
     for i in buttons
      i.click
         sleep 1
     end
  end

def them_style(theme)
  $driver.find_elements(:xpath, "//body[contains(@class, '#{theme}')]")

end
def left_rail
  $driver.find_element(:xpath,"//div[@class = 'handle']")
end
  def left_rail_embargorailselector
  $driver.find_element(:xpath, "//div[@class = 'embargoRailSelector clearfix']")
  end
  def left_rail_preferencesmenu
  $driver.find_element(:xpath, "//div[@class = 'preferencesMenu pull-left']/span[@class = 'ui-icon gearicon-night-closed']")
  end
  def left_rail_fund_dropdown
    $driver.find_element(:xpath,"//div[@class = 'InvestmentExplorerControl clearfix']//span[@class = 'ui-selectmenu-status']")
  end

end



