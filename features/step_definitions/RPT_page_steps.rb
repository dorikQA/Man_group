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
   sleep 3
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
   sleep 7
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
#8
 Then /^Verify "([^"]*)" overlay contains subsections:$/ do |overlay, submenu_name|
  puts overlay
  risk_perfomance_page.profile_icon.click
  sleep 2
  array = submenu_name.raw.flatten
  array.each  do |submodule_text|
    risk_perfomance_page.my_profile_submenu(submodule_text).click
    puts submodule_text
  end
end
#9
 Then /^Verify subsections in ([^"]*):$/ do |submodule_text, submenu_content|
  puts submodule_text
  risk_perfomance_page.my_profile_submenu(submodule_text).click
  array = submenu_content.raw.flatten
  array.each do |content_text|
  if risk_perfomance_page.my_profile_section_content(content_text).displayed? == false
  fail " #{content_text} is not displayed"
  else
  puts content_text
  end
  end
end

#10
 Then /^Verify ([^"]*) contains links:$/ do |submodule_text, linkname|
  puts submodule_text
  risk_perfomance_page.my_profile_submenu(submodule_text).click
  array = linkname.raw.flatten
  array.each do |link_name|
    puts
    if risk_perfomance_page.my_profile_changepassword(link_name).displayed? == false
      fail "#{link_name} is not displayed"
    else
      puts link_name

    end
   end
end
#11
 Then /^Verify ([^"]*) contains languages:$/ do|submodule_text, language_name|
  puts submodule_text
  risk_perfomance_page.my_profile_submenu(submodule_text).click
  sleep 2
  array = language_name.raw.flatten
  array.each do |language|
   if risk_perfomance_page.my_profile_languageselector(language).displayed? == false
     fail " #{language} is not displayed"
   else
     puts language
   end
  end
end

#12
 Then /^Verify ([^"]*) contains Theme Styles:$/ do |submodule_text, theme_name|
  puts submodule_text
  risk_perfomance_page.my_profile_submenu(submodule_text).click
  sleep 2
  array = theme_name.raw.flatten
  array.each do |theme|
    if risk_perfomance_page.my_profile_theme(theme).displayed? == false
      fail " #{theme} is not displayed"
    else
      puts theme
    end
  end
end
#13
 Then /^Verify "Create a New Space" overlay "([^"]*)" column contains:$/ do |modules, submodules|
  puts modules
  array = submodules.raw.flatten
  array.each do |module_name|
    $driver.mouse.move_to risk_perfomance_page.newspace_module_column(module_name)
    puts module_name
  end
  end
# 14-17
 Then /^In "Create a New Space" click on submodule "([^"]*)"$/ do |modules|
  risk_perfomance_page.create_space_submodule_name(modules).click
end
 Then /^Verify module "([^"]*)" contains submodules:$/ do |modules, submodules|
  puts modules
  array = submodules.raw.flatten
  array.each do |module_name|
    x = risk_perfomance_page.newspace_addmodule_column(module_name)
    if x.displayed?
      begin
      $driver.mouse.move_to x
      puts module_name
      rescue Selenium::WebDriver::Error::MoveTargetOutOfBoundsError
          raise "#{module_name} is not displayed"
   # else fail " #{module_name} is not displayed"
      end
    end
  end
 end

#18
 Then /^"Company" logo should be displayed$/ do
  if risk_perfomance_page.company_logo.displayed? == false
    fail "LOGO is not displayed"
  end
end
 Then /^"Plus" button to create new work should be displayed$/ do
   if risk_perfomance_page.plus_workspace_button.displayed? == false
     fail "Plus button to create new work space is not displayed"
   end
 end
 Then /^"My Profile" icon should be displayed$/ do
    if risk_perfomance_page.profile_icon.displayed? == false
      fail "My Profile icon is not displayed"
    end
  end
 Then /^'ADD MODULE' button should be displayed$/ do
  if risk_perfomance_page.add_module_button.displayed? == false
    fail "'ADD MODULE' icon is not displayed"
  end
 end

 Then /^'DOWNLOAD PDF' button should be displayed$/ do
  if risk_perfomance_page.download_pdf_button.displayed? == false
    fail "'DOWNLOAD PDF' icon is not displayed"
  end
end
 Then /^Click on 'ADD MODULE' button$/ do
 risk_perfomance_page.add_module_button.click
end
 Then /^Close Add module overlay$/ do
 risk_perfomance_page.close_button.click
 end
 Then /^"([^"]*)" overlay should display columns:$/ do |overlay, columns|
  puts overlay
  array = columns.raw.flatten
  array.each do |column_name|
      risk_perfomance_page.addmodule_overlay_column_name(column_name)
      puts column_name
  end
end
 Then /^In 'ADD MODULE' click on submodule "([^"]*)"$/ do |submodule__name|
 puts submodule__name
 risk_perfomance_page.modulecolumn_submodule_name(submodule__name).click
end
 Then /^"([^"]*)" column should contains submodules:$/ do |column_mame, module_table|
  puts column_mame
  array = module_table.raw.flatten
  array.each do |submodule_name|
      x = risk_perfomance_page.addmodule_modulecolumn_submodule(submodule_name)
      if x.displayed?
        $driver.mouse.move_to x
        puts submodule_name
      else fail " #{submodule_name} is not displayed"
      end
  end
end
Then /^Module "([^"]*)" contains submodules:$/ do |module_submodule, addmodule_table|
  puts module_submodule
  array = addmodule_table.raw.flatten
  array.each do |submodule_name|
    x = risk_perfomance_page.addmodule_addmodules_submodule(submodule_name)
    if x.displayed?
      $driver.mouse.move_to x
      puts submodule_name
    else fail " #{submodule_name} is not displayed"
    end
  end
end
##PDF download Overlay
Then /^Click on 'PDF download' button$/ do
  risk_perfomance_page.download_pdf_button.click
end
Then /^"([^"]*)" overlay should have columns:$/ do |overlay, columns|
  puts overlay
  array = columns.raw.flatten
  array.each do |column_name|
    risk_perfomance_page.pdf_overlay_column_name(column_name)
    puts column_name
  end
end
Then /^"([^"]*)" should contains submodules:$/ do  |module_submodule, pdf_table|
  puts module_submodule
  array = pdf_table.raw.flatten
  array.each do |reporttype|
    x = risk_perfomance_page.pdf_modulecolumn_submodule(reporttype)
    if x.displayed?
      x.click
      puts reporttype
    else fail " #{reporttype} is not displayed"
    end
  end
end
Then /^Close 'PDF download' overlay$/ do
  sleep 3
  button = risk_perfomance_page.close_button
 if button.displayed?
   button.click
 else
   fail "Close button is not displayed"
 end
end

Then /^Click on all items from "ADD MODULE" column$/ do
  items  = risk_perfomance_page.ws_addmodules
  itemstext = []
 for i in items
    if i.displayed?
    itemstext.push(i.text)
    i.click
    end
 end
  @array1 =  itemstext
  # puts @array1
end


Then /^Verify all added submodules displayed in YOUR MODULE QUEUE$/ do
  selcteditems= risk_perfomance_page.ws_queue
  selcteditemstext = []
  for i in selcteditems
    selcteditemstext.push(i.text)
  end
  @array2 = selcteditemstext
  # puts @array2
  if @array1 != @array2
  fail "BUG!!! Not all added  prefrences are displayed in QUEUE"
  end
  # puts @array1
  # puts  @array2

end
Then /^Verify that randomly added preferences displayed$/ do
  sleep 7
  @array3 = risk_perfomance_page.displyed_modules_list
  if @array3 !=  @array2
    fail "Bug! Not all modules are displayed user added something different"
  else puts "all cool"
  end

 end

Then /^Add random one preference from each module$/ do
  risk_perfomance_page.random_click_preference
  @queuelist =  risk_perfomance_page.queue_item_list
end


Then /^Verify that all added modals displayed$/ do
  if risk_perfomance_page.displyed_modules_list != @queuelist
  elsif @array3 !=  @array2
    puts "Bug"
  else puts "All good"
  end
  puts risk_perfomance_page.displyed_modules_list
  puts @queuelist
end

Then /^In 'ADD MODULE' add random one preference from each module$/ do
  risk_perfomance_page.am_random_click_preference
 @queueamlist =  risk_perfomance_page.am_queue_item_list
end
Then /^Verify that preference from 'ADD MODULE' displayed$/ do
  if risk_perfomance_page.displyed_modules_list != @queueamlist
    fail "BUG"
  end
  puts @queueamlist
  puts risk_perfomance_page.displyed_modules_list

end

Then /^At the bottom of page list of terms should be displayed$/ do |disclaimers_table|
  sleep 6
  disclaimers_table.raw.flatten.each do |disclaimer_name|
    x = risk_perfomance_page.disclaimers(disclaimer_name )
    if x.displayed? == false
     fail "#{disclaimer_name} is not displayed "
    else puts disclaimer_name
    end
  end
end
Then /^Click on "([^"]*)"$/ do |disclaimer_name|
  sleep 10
  risk_perfomance_page.disclaimer(disclaimer_name).click
end
Then /^Close "Terms and Conditions" via "close" button$/ do
  risk_perfomance_page.close_disclaimer_button.click
end
Then /^Tap 'x' to close "Terms and Conditions"$/ do
  risk_perfomance_page.close_disclaimer_top_button.click
end

And /^Disclaimer header should be '([^"]*)'$/ do |disclaimer_header|
  sleep 6
    risk_perfomance_page.disclaimer_name_content_header(disclaimer_header)
    puts disclaimer_header
end

And /^Disclaimer document should have bullets:$/ do |bullets|
  sleep 6
  bullets.raw.flatten.each do |disclaimer_bullets|
    risk_perfomance_page.disclaimer__boolets(disclaimer_bullets)
    puts disclaimer_bullets
  end
end
And /^List of official following websites should be:$/ do |links|
  sleep 6
  links.raw.flatten.each do |disclaimer_links|
    risk_perfomance_page.disclaimer_link(disclaimer_links)
    puts disclaimer_links
  end
end

Then /^From "Add Module" click on submodule "([^"]*)"$/ do |modules|
  risk_perfomance_page.add_module_submodule_name(modules).click
end

Then /^In "Add Module" overlay click on all items from "ADD MODULE" column$/ do
  items  = risk_perfomance_page.am_addmodules
  itemstext = []
  for i in items
    if i.displayed?
      itemstext.push(i.text)
      i.click
    end
  end
  @array1_am =  itemstext
  puts @array1_am
end

Then /^Verify in "Add Module" all added submodules displayed in YOUR MODULE QUEUE$/ do
  selcteditems= risk_perfomance_page.am_queue
  selcteditemstext = []
  for i in selcteditems
    selcteditemstext.push(i.text)
  end
  @array2_am = selcteditemstext
  puts @array2_am
  if @array1_am != @array2_am
    fail "BUG!!! Not all added  prefrences are displayed in QUEUE"
  end
  puts @array1_am
  puts  @array2_am
end

Then (/^Tap "([^"]*)" button on the "Add Module" overlay$/) do |button_name|
  risk_perfomance_page.addtospace_buttons(button_name)
  sleep 7
end

