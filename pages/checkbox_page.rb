class CheckboxPage

  def initialize(driver)
    @driver = driver
  end

  def open
    @driver.navigate.to("https://demoqa.com/checkbox")
  end

  def seleccionar_home
    checkbox_icon = @driver.find_element(xpath: "(//*[local-name()='svg'])[2]")
    checkbox_icon.click
  end

  def resultado
    @driver.find_element(tag_name: "body").text
  end

end