require 'minitest/autorun'
require 'selenium-webdriver'
require 'fileutils'
require_relative '../config/settings'
require_relative './allure_helper'

class TestBase < Minitest::Test

  def setup
    @test_start_time = Time.now
    browser = SETTINGS[:browser]

    options =
      case browser
      when :chrome
        chrome_options = Selenium::WebDriver::Chrome::Options.new
        chrome_options.add_argument("--headless=new")
        chrome_options.add_argument("--no-sandbox")
        chrome_options.add_argument("--disable-dev-shm-usage")
        chrome_options.add_argument("--window-size=1920,1080")
        chrome_options.add_argument("--log-level=3")
        chrome_options.add_argument("--disable-notifications")
        chrome_options.add_preference("credentials_enable_service", false)
        chrome_options.add_preference("profile.password_manager_enabled", false)
        chrome_options
      when :firefox
        firefox_options = Selenium::WebDriver::Firefox::Options.new
        firefox_options.add_argument("--headless")
        firefox_options
      else
        raise "Unsupported browser: #{browser}"
      end

    @driver = Selenium::WebDriver.for(
      browser,
      options: options
    )

    @driver.navigate.to SETTINGS[:base_url]
  end

  def teardown
    screenshot_path = nil

    if passed?
      puts "Test finalizado correctamente."
    else
      screenshot_path = tomar_captura if SETTINGS[:screenshots_enabled]
    end

    AllureHelper.write_result(
      test_name: "#{self.class}##{name}",
      status: passed? ? 'passed' : 'failed',
      start_time: @test_start_time,
      stop_time: Time.now,
      screenshot_path: screenshot_path
    )

    begin
      @driver.quit if @driver
    rescue
      puts "El navegador ya estaba cerrado."
    end
  end

  def tomar_captura
    FileUtils.mkdir_p("screenshots")

    timestamp = Time.now.strftime("%Y%m%d_%H%M%S")
    file_name = "screenshots/error_#{timestamp}.png"

    @driver.save_screenshot(file_name)

    puts "Captura guardada en: #{file_name}"

    file_name
  end

end