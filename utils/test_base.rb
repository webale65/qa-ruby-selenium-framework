require 'minitest/autorun'
require 'selenium-webdriver'
require 'fileutils'
require_relative '../config/settings'

class TestBase < Minitest::Test

  def setup
    options = Selenium::WebDriver::Chrome::Options.new

    options.add_argument("--headless=new")
    options.add_argument("--no-sandbox")
    options.add_argument("--disable-dev-shm-usage")
    options.add_argument("--window-size=1920,1080")
    options.add_argument("--log-level=3")
    options.add_argument("--disable-notifications")

    options.add_preference("credentials_enable_service", false)
    options.add_preference("profile.password_manager_enabled", false)

    @driver = Selenium::WebDriver.for(
      SETTINGS[:browser],
      options: options
    )

    @driver.navigate.to SETTINGS[:base_url]
  end

  def teardown
    if passed?
      puts "Test finalizado correctamente."
    else
      tomar_captura if SETTINGS[:screenshots_enabled]
    end

    @driver.quit if @driver
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