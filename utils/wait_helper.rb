class WaitHelper

  def initialize(driver, timeout = 5)
    @wait = Selenium::WebDriver::Wait.new(timeout: timeout)
    @driver = driver
  end

  def until_visible(locator_type, locator_value)

    @wait.until do

      element = @driver.find_element(locator_type, locator_value)

      element.displayed?

    end

  end

end