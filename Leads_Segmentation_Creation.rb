

Given(/^the user is authenticated in the website$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to "https://app-staging.rdstation.com.br"
  @driver.find_element(:id, 'user_email') .send_keys('clauziragomes@gmail.com')
  @driver.find_element(:id, 'user_password') .send_keys('123456') 
  @driver.find_element(:css, 'input[type="submit"]') .click
end

Given(/^access the "([^"]*)" menu$/) do | menu|
  @driver.find_element(:link_text, 'Relacionar') .click
end

Given(/^access "([^"]*)" on the dropdown$/) do | dropdown|
@driver.find_elements(:xpath,("//ul[@class='dropdown-menu']//li/a"))

end