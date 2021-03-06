# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Goodsitetest' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'goodsitetest' do
    @driver.get('http://127.0.0.1:3000/main/index')
    @driver.manage.resize_to(1848, 1053)
    @driver.find_element(:css, 'a:nth-child(1) > .btn').click
    @driver.find_element(:id, 'session_username').click
    @driver.find_element(:id, 'session_username').send_keys('labzunova')
    @driver.find_element(:id, 'session_password').click
    @driver.find_element(:id, 'session_password').send_keys('1111')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:link_text, 'labzunova').click
    @driver.find_element(:link_text, 'Eng').click
    @driver.find_element(:css, '.btn').click
    @driver.find_element(:id, 'username').click
    @driver.find_element(:id, 'username').send_keys('labzunova')
    @driver.find_element(:id, 'email').click
    @driver.find_element(:id, 'email').send_keys('dasha.labzunova@mail.ru')
    @driver.find_element(:id, 'link').click
    @driver.find_element(:id, 'link').send_keys('https://yandex.ru/')
    @driver.find_element(:id, 'headline').click
    element = @driver.find_element(:id, 'headline')
    @driver.action.double_click(element).perform
    @driver.find_element(:id, 'headline').send_keys('Большой тубус')
    @driver.find_element(:id, 'tube_description').click
    @driver.find_element(:id, 'tube_description').click
    @driver.find_element(:id, 'tube_description').send_keys('Очень большой тубус для очень больших чертежей!')
    @driver.find_element(:css, 'tr:nth-child(6) > td:nth-child(2)').click
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('1111')
    @driver.find_element(:id, 'password_confirmation').click
    @driver.find_element(:id, 'password_confirmation').send_keys('1111')
    @driver.find_element(:name, 'commit').click
    @driver.find_element(:link_text, 'Рус').click
    @driver.find_element(:link_text, 'тубус.МГТУ').click
    @driver.find_element(:link_text, 'Выйти').click
    @driver.find_element(:link_text, 'Впервые тут?').click
  end
end
