require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara_minitest_spec'

Capybara.run_server = false
Capybara.default_driver = :selenium
#Capybara.app_host = 'http://qa.www.seatwave.es/'
Capybara.ignore_hidden_elements = true
Capybara.default_wait_time = 20
Capybara.match = :first

Capybara.add_selector(:name) do
  xpath { |name| XPath.descendant[XPath.attr(:name) == name.to_s] }
end