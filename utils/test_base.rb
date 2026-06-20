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
