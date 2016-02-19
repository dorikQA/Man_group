class RiskPerfomancePage
  def profile_icon
   $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")
  end
  def reset_button button
      $driver.find_element(:xpath, "//button[@type = 'button' and text() = '#{button}']")
  end
 def plus_workspace_button
     $driver.find_element(:xpath,"//a[@class = 'nav-tab' and text() = '+']")
 end
  def workspace_overlay create_newspace_overlay
    sleep 4
   $driver.find_element(:xpath, "//span[@class = 'ui-dialog-title' and text() = '#{create_newspace_overlay}']")

  end

  def create_space_buttons button_name
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

  def work_space_tab_name workspace_name
    workspaces = $driver.find_elements(:xpath,"//a[@class = 'nav-tab' and contains(text(), '#{workspace_name}')]")
    if workspaces.count > 0
      puts "Passed'#{workspace_name}' exists"
    else
      raise "BUG! '#{workspace_name}' is not exist"
    end
  end
  def active_work_space_tab workspace_name
  wsactives = $driver.find_elements(:xpath, "//li[@class = 'active']/a[contains(@title,'#{workspace_name}')]")
  if wsactives.count > 0
    puts "TC passed. '#{workspace_name}' was created and it's active"
  else raise "TC Failed. WS was not created or it's not active"
  end
  end

  def enter_spacename_field
    $driver.find_element(:xpath, "//input[@class = 'workspace-name']")
  end
  def workspace ws
    workspace = $driver.find_element(:xpath, "//a[@class = 'nav-tab' and text() = '#{ws}']")
  end
  def actions action
    $driver.find_elements(:xpath, "//div[@class = 'menu']//span[contains(text(), '#{action}')]")
  end
  def renamefield
    $driver.find_element(:xpath, "//input[@class = 'rename-input']")
   end
  end
