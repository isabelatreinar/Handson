require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome  # essa configuração é para instanciar o browser
  #config.app_host = 'https://opentdb.com/register.php' #url padrão
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 5