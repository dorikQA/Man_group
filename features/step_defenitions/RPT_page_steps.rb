Given /^Enter "([^"]*)" password "([^"]*)" and pin "([^"]*)" and click "([^"]*)" button$/ do |emailadress, password, pin, button|
  login_page.homepage
  login_page.emailfield.send_keys emailadress
  login_page.passwordfield.send_keys password
  login_page.pinfield.send_keys pin
  login_page.loginbutton button
  sleep 15

end
Then /^Click "Profile" icon$/ do
  risk_perfomance_page.profile_icon.click
end
Then (/^Tap "([^"]*)" button$/) do |button|
  risk_perfomance_page.reset_button(button).click

end
Then /^Tap on "plus" button$/ do
  risk_perfomance_page.plus_workspace_button.click
end

Then /^Verify "([^"]*)" overlay opens$/ do |create_newspace_overlay|
  risk_perfomance_page.workspace_overlay create_newspace_overlay
  if  risk_perfomance_page.workspace_overlay(create_newspace_overlay).displayed?
    puts "'#{create_newspace_overlay}' was opened."
  else
    fail "BUG! '#{create_newspace_overlay}' was not opened"
  end
end

Then (/^Tap "([^"]*)" button on the "Create a new space" overlay$/) do |button_name|
  risk_perfomance_page.create_space_buttons(button_name)
end
Then /^"([^"]*)" overlay should be closed$/ do |create_newspace_overlay|
  if risk_perfomance_page.workspace_overlay(create_newspace_overlay).displayed?
    fail "BUG! '#{create_newspace_overlay}' still displayed"
  end
end

Then /^"([^"]*)" tab should exists$/ do |workspace_name|
  risk_perfomance_page.work_space_tab_name workspace_name

end
Then /^Just created "([^"]*)" tab should be active$/ do |workspace_name|
  risk_perfomance_page.active_work_space_tab workspace_name
end
Then /^Enter "([^"]*)" workspace name$/ do |workspacename|
  risk_perfomance_page.enter_spacename_field.click
  risk_perfomance_page.enter_spacename_field.clear
  sleep 3
  risk_perfomance_page.enter_spacename_field.send_keys workspacename

  # sleep 5
  # risk_perfomance_page.enter_spacename_field.send_keys "#{workspacename}"
  # # risk_perfomance_page.enter_spacename_field.clear
  # risk_perfomance_page.enter_spacename_field.send_keys "#{workspacename}"
end
Then /^Move mouse to "([^"]*)"/ do |ws|
  workspace = risk_perfomance_page.workspace ws
  $driver.mouse.move_to workspace
end
Then /^Click "([^"]*)" in menu$/ do |action|
  actions = risk_perfomance_page.actions action
  sleep 4
  for i in actions
    if i.displayed?
      i.click
    end
  end
end
Then /^Enter new name "([^"]*)" of workspace and press enter button$/ do |new_ws_name|
  risk_perfomance_page.renamefield.send_keys new_ws_name
  risk_perfomance_page.renamefield.send_keys :enter
end
Then /^WorkSpace "([^"]*)" should not be displayed$/ do |workspace_name|
  sleep 4
  if risk_perfomance_page.work_space_tab_name(workspace_name).count > 0
    fail "Bug!!!'#{workspace_name}' exists"
  end
end
Then /^Verify "([^"]*)" overlay contains subsections:$/ do |overlay, subsection|
  puts overlay
  puts subsection
  for row in subsection.hashes() do
    element = $driver.find_elements(:xpath, "//h3[text() = '#{row['subsections']}']")
    if element.count == 0
      raise  "Couldn't find subsection  #{row}"
    end
  end
end
Then /^Verify subsections in ([^"]*):$/ do |subsection, name|
  puts subsection
  puts name
  $driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
  for row in name.hashes() do
    element = $driver.find_elements(:xpath,"//td[text() = '#{row['subsections']}']")
    if element.count == 0
      raise  "Couldn't find subsection  #{row}"
    end
  end
end

Then /^Verify ([^"]*) contains links:$/ do |subsection, linkname|
  puts subsection
  puts linkname
  $driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
  for row in linkname.hashes() do
    element = $driver.find_elements(:xpath,"//span[text() = '#{row['links']}']")
    if element.count == 0
      raise  "Couldn't find link name #{row}"
    end
  end
end
Then /^Verify ([^"]*) contains languages:$/ do|subsection, language|
  puts subsection
  puts language
  $driver.find_element(:xpath, "//h3[contains(.,'#{subsection}')]").click
  for row in language.hashes() do
    element = $driver.find_elements(:xpath,"//tr[contains(.,'Language')]//span[contains(.,'#{row['languages']}')]")
    if element.count == 0
      raise  "Couldn't find language #{row}"
    end
  end
end
Then /^Verify ([^"]*) contains Theme Styles:$/ do |subsection, theme|

  puts subsection
  puts theme
  $driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
  for row in theme.hashes() do
    element = $driver.find_elements(:xpath,"//div[contains(@class,'content clearfix')][./p[contains(.,'Choose a theme style')]]//label[text() = '#{row['themes']}']")
    if element.count == 0
      raise  "Couldn't find Theme #{row}"
    end
  end
end