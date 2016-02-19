class LoginPage
 def homepage
 $driver.get "https://clarus-man-a2.wsodqa.com/Login"
  #$driver.get "https://clarus.man.com/Login"
end

def emailfield
  $driver.find_element(:xpath, "//input[@name = 'user_id']")
end

def passwordfield
  $driver.find_element(:xpath, "//input[@id = 'user_password']")
end

def pinfield
    $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
end

def loginbutton button
  buton = $driver.find_element(:xpath, "//*[contains(text(),'#{button}')]")
  if buton.displayed?
    buton.click
  else
    fail "FAILED! Can't find '#{button}' button"
  end
end

def warningmessage message
  warningMessage = $driver.find_elements(:xpath, "//*[contains(text(),'#{message}')]")
  # if warningMessage.count == 0
  #   fail "FAILED!'#{message}' message was not occurred"
  # end
end
# def overlaybutton overlay
#   closeOverlayButton = $driver.find_element(:xpath,"//div[contains(@class, 'login-ui-icon login-icon-cross')]")
#   if closeOverlayButton.displayed?
#     closeOverlayButton.click
#   else
#     fail "FAILED! Can't find '#{overlay}' overlay close button"
#   end
#
# end

def password message
    if $driver.find_elements(:xpath, "//div[@class = 'em-body-text' and text() = '#{message}' ]").count == 0
       fail "FAILED!'#{message}' message was not occurred"
    end
end

def forgotlinks  linkname
  $driver.find_element(:xpath, "//div[@class = 'forgot-pass']//*[contains(text(),'#{linkname}')]")
end
def forgotpassword_1 message1
  begin
   $driver.find_element(:xpath, "//*[contains(text(),'#{message1}')]").displayed?
  rescue
    fail "FAILED!'#{message1}' message was not occurred"
  end
end

def forgotpassword_2 message2
   #forgotpassword2 = $driver.find_elements(:xpath, "//*[contains(text(),  \"#{message2}\")]")
   if $driver.find_elements(:xpath, "//div[@class = 'fp-message']//*[contains(text(), \"#{message2}\")]").count == 0
     fail "FAILED!\"#{message2}\" message was not occurred"
   end
end
def sendpassword
  $driver.find_element(:xpath, "//div[@class ='forgot-password']//*[@value = 'Send']")
end
def invalid_email_button
  $driver.find_element(:xpath, "//div[@id = 'ErrorIcon']")
end

def reset_pass_email_field
 $driver.find_element(:xpath, "//span/input[contains(@class, 'forgot-input')]")
end


def message_sentemail_mg_1 message1
  if $driver.find_elements(:xpath, "// div[@class = 'message']//h2[contains(text(), '#{message1}')]").count == 0
    fail "Check message '#{message1}'"
  end
end
def message_sentemail_mg_2 message2
   if  $driver.find_elements(:xpath, "// div[@class = 'message']//div[contains(text(), '#{message2}')]").count == 0
     fail "Check message '#{message2}'"
   end
end

def message_sentemail_mg_3 message3
 if  $driver.find_elements(:xpath, "// div[@class = 'message']//b[text() = '#{message3}']").count == 0
   fail "Check message '#{message3}'"
 end
end

def message_sentemail_mg_4 message4
  if  $driver.find_elements(:xpath, "// div[@class = 'message']//div[contains(text(), '#{message4}')]").count == 0
  fail "Check message '#{message4}'"
  end
end

def forgot_pin_sent_email_mg1 mg1
  if  $driver.find_elements(:xpath, "// div[@class = 'fpin-message']//h2[text() = \"#{mg1}\"]").count == 0
    fail "Check message '#{mg1}'"
  end

end
 def forgot_pin_sent_email_mg2 mg2
   if  $driver.find_elements(:xpath, "// div[@class = 'fpin-message']/div[contains(text(),\"#{mg2}\")]").count == 0
     fail "Check message '#{mg2}'"
   end
 end
 def send_pass_button
   $driver.find_element(:xpath, "//div[@class ='forgot-password']//*[@value = 'Send']")
 end
def send_pin_button
  $driver.find_element(:xpath, "//div[@class ='forgot-pin']//*[@value = 'Send']")
end

 def send_email_field
   $driver.find_element(:xpath, "//input[@name = 'txtForgotPIN']")
 end
# def pinoverlaybutton sendpasswordoverlay
#   sendpasswordoverlays = $driver.find_elements(:xpath,"//div[contains(@class, 'login-ui-icon login-icon-cross')]")
#   for i in sendpasswordoverlays
#     if i.displayed?
#       i.click
#     end
#   end
#   if sendpasswordoverlays.count == 0
#     puts "Faild. Can't find #{sendpasswordoverlay}"
#   end
# end

  def overlaybutton overlay
    sendpasswordoverlays = $driver.find_elements(:xpath,"//div[contains(@class, 'login-ui-icon login-icon-cross')]")
    for i in sendpasswordoverlays
      if i.displayed?
        i.click
      end
    end
    if sendpasswordoverlays.count == 0
      puts "Faild. Can't find #{overlay}"
    end
  end



def pagesumodles submodules
  for row in submodules.hashes()
    elements = $driver.find_elements(:xpath,"//div[@class = 'content-features']//h2[@class = 'title' and contains(text(), '#{row['subsections']}')]")
    if elements.count == 0
      raise  "Couldn't find module #{row}"
    else
      for i in elements
        $driver.mouse.move_to i
        sleep 2
      end
    end
end

end
def disclaimers disclaimerslist
    for row in disclaimerslist.hashes()
      elements = $driver.find_elements(:xpath,"//ul[@class = 'footer-nav']//a[contains(text(), '#{row['disclaimers']}')]")
      if elements.count == 0
        raise  "Couldn't find module #{row}"
      else
        for i in elements
          $driver.mouse.move_to i
          sleep 2
        end
      end
     end
end



  end
