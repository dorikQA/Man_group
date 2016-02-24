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
   $driver.find_element(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{modules}']")

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
   array = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{module_name}']")
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
end

