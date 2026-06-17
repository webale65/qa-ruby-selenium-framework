require 'minitest/autorun'
require 'selenium-webdriver'
require 'fileutils'
require_relative '../config/settings'

class TestBase < Minitest::Test

  def setup
    @driver = Selenium::WebDriver.for SETTINGS[:browser]

    @driver.navigate.to SETTINGS[:base_url]
  end

  def teardown
    if passed?
      puts "Test finalizado correctamente."
    else
      tomar_captura if SETTINGS[:screenshots_enabled]
    end

    @driver.quit
  rescue
    puts "El navegador ya estaba cerrado."
  end

  def tomar_captura
    FileUtils.mkdir_p("screenshots")

    timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
    file_name = "screenshots/error_#{timestamp}.png"

    @driver.save_screenshot(file_name)

    puts "Captura guardada en: #{file_name}"
  end

end