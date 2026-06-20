require 'selenium-webdriver'
require_relative '../utils/wait_helper'

class ButtonsPage

  def initialize(driver)
    @driver = driver
    @wait = WaitHelper.new(driver)
  end

  def double_click
  elemento = @driver.find_element(id: "doubleClickBtn")
  @driver.execute_script("arguments[0].dispatchEvent(new MouseEvent('dblclick', {bubbles: true}));", elemento)
  end

  def mensaje_double_click
    @wait.until_visible(:id, "doubleClickMessage")
    @driver.find_element(id: "doubleClickMessage").text
  end

  def right_click
  elemento = @driver.find_element(id: "rightClickBtn")
  @driver.execute_script("arguments[0].dispatchEvent(new MouseEvent('contextmenu', {bubbles: true}));", elemento)
  end

  def mensaje_right_click
    @wait.until_visible(:id, "rightClickMessage")
    @driver.find_element(id: "rightClickMessage").text
  end

  def dynamic_click
    boton = @driver.find_element(xpath: "//button[text()='Click Me']")
    @driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", boton)
    boton.click
  end

  def mensaje_dynamic_click
    @wait.until_visible(:id, "dynamicClickMessage")
    @driver.find_element(id: "dynamicClickMessage").text
  end

end