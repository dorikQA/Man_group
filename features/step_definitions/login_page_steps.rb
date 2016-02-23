
Given /^Open the Man Group site$/ do
  login_page.homepage
end

Then /^Input email address "([^"]*)"$/ do |emailadress|
  login_page.emailfield.send_keys emailadress
end
Then /^Click "([^"]*)" button$/ do |button|
  login_page.loginbutton button
end

Then /^Input the email address "([^"]*)"$/ do |email|
  login_page.emailfield.send_keys email
end

Then /^Warning message "([^"]*)" should be displayed$/ do |message|
  if login_page.warningmessage(message).count == 0
    fail "FAILED!'#{message}' message was not occurred"
  end
end
#
Then (/^Close "([^"]*)" overlay$/) do |overlay|
  login_page.overlaybutton overlay
end

Then /^Enter password "([^"]*)"$/ do |password|
  login_page.passwordfield.send_keys password
 end
Then /^Enter pin "([^"]*)"$/ do |pin|
  login_page.pinfield.send_keys pin
end

Then /^Click on "([^"]*)" link$/ do |linkname|
  login_page.forgotlinks(linkname).click
end
Then (/^"([^"]*)" message title should be displayed$/) do |message1|
  login_page.forgotpassword_1 message1
end

And (/^"([^"]*)" should be displayed$/) do |message2|
  login_page.forgotpassword_2(message2)
end

Then /^Click "Send" password  button$/ do
  login_page.sendpassword.click
end

Then /^Close warning message "Invalid Email Address"$/ do
  login_page.invalid_email_button.click
end

Then /^"([^"]*)" message should be close$/ do |message|
  if login_page.warningmessage(message).count > 0
      fail "FAILED!'#{message}'still displayed"
  end
end
Then /^Enter email "([^"]*)" to reset password$/ do |email|
  login_page.reset_pass_email_field.send_keys email
end
Then /^Verify success reset password message "([^"]*)"."([^"]*) "([^"]*)"$/ do |message1, message2, message3|
  login_page.message_sentemail_mg_1 message1
  login_page.message_sentemail_mg_2 message2
  login_page.message_sentemail_mg_3 message3
  # login_page.message_sentemail_mg_4 message4
end
Then (/^"([^"]*)" message should be displayed$/) do |mg1|
  login_page.forgot_pin_sent_email_mg1(mg1)
end

Then (/^Verify "([^"]*)" message should be displayed$/) do |mg2|
login_page.forgot_pin_sent_email_mg2(mg2)
end

Then (/^Click "Send" pin button$/) do
  login_page.send_pin_button.click
end

Then /^Enter email address "([^"]*)"$/ do |email|
login_page.send_email_field.send_keys email
end
Then /^Verify reset pin success message "([^"]*)"."([^"]*)"$/ do |mg1, mg2|
  login_page.forgot_pin_sent_email_mg1 mg1
  login_page.forgot_pin_sent_email_mg2 mg2
end

Then /^List of  description submodules should be displayed on page:$/ do |submodules|
  login_page.pagesumodles submodules
end
Then /^List of disclaimers should be displayed on page:$/ do |disclaimerslist|
  login_page.disclaimers disclaimerslist
end
# Given /^Enter "([^"]*)" password "([^"]*)" and pin "([^"]*)" and click "([^"]*)" button$/ do |emailadress, password, pin, button|
#   login_page.homepage
#   login_page.emailfield.send_keys emailadress
#   login_page.passwordfield.send_keys password
#   login_page.pinfield.send_keys pin
#   login_page.loginbutton button
#   sleep 15
#
# end
