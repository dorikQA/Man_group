class RiskPerfomancePage

  def profile_icon
    $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")
  end
  def reset_button(button)
    $driver.find_element(:xpath, "//button[@type = 'button' and text() = '#{button}']")
  end
  def plus_workspace_button
    $driver.find_element(:xpath,"//a[@class = 'nav-tab' and text() = '+']")
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
    $driver.find_element(:xpath, "//input[@class = 'workspace-name']")
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
    $driver.find_element(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{modules}']")
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
    array = $driver.find_elements(:xpath,"//span[text() = '#{link_name}']")
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
    $driver.find_element(:id, "AddModuleButton")
  end
  def download_pdf_button
    $driver.find_element(:id, "DownloadPDFButton")
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
    close_buttons = $driver.find_elements(:xpath,"//div[contains(@class, 'ui-dialog-titlebar')]//button[@title = 'close']")
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
    $driver.find_elements(:xpath, "//div[@id = 'AddWorkspaceModal']//div[@class = 'chosen-app-options-container']//a")
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
    $driver.find_element(:xpath, "//a[contains(@class, 'disclaimer') and text() = '#{disclaimer_name}']")
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
    $driver.find_element(:xpath,"//div[@class = 'disclaimer-content']/h1[text() = '#{disclaimer_header}']")
    rescue Selenium::WebDriver::Error::NoSuchElementError || Selenium::WebDriver::Error::InvalidSelectorError
     raise "'#{disclaimer_header}' was not found"
   end
  end
  def disclaimer__boolets(disclaimer_bullets)
    begin
    $driver.find_element(:xpath,"//div[@class = 'disclaimer-content']/h2[contains(text(),  '#{disclaimer_bullets}')]")
    rescue Selenium::WebDriver::Error::NoSuchElementError
    raise "'#{disclaimer_bullets}' was not found"
    end
  end
  def disclaimer_link(disclaimer_links)
    begin
    $driver.find_element(:xpath,"//div[@class = 'disclaimer-content']//a[text() = '#{disclaimer_links}']")
    rescue Selenium::WebDriver::Error::NoSuchElementError
      raise "'#{disclaimer_links}' was not found"
     end
  end
  def add_module_submodule_name(modules)
    begin
      $driver.find_element(:xpath,"//div[@id = 'AddModuleModal']//div[@class  = 'nav-options-container clearfix']//a[text() = '#{modules}']")
    rescue Selenium::WebDriver::Error::NoSuchElementError
      raise "Element #{modules} is not displayed"
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

end


