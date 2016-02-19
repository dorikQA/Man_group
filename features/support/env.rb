require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'rspec'


def login_page
  LoginPage.new
end
def risk_perfomance_page
  RiskPerfomancePage.new
end
