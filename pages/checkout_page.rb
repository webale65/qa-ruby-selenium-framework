require_relative '../utils/wait_helper'

class CheckoutPage

  def initialize(driver)
    @driver = driver
    @wait = WaitHelper.new(driver)
  end

  def click_checkout
    @driver.find_element(id: "checkout").click
  end

  def completar_nombre(first_name)
    @driver.find_element(id: "first-name").send_keys(first_name)
  end

  def completar_apellido(last_name)
    @driver.find_element(id: "last-name").send_keys(last_name)
  end

  def completar_codigo_postal(postal_code)
    @driver.find_element(id: "postal-code").send_keys(postal_code)
  end

  def click_continue
    boton = @driver.find_element(id: "continue")
    @driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", boton)
    @driver.execute_script("arguments[0].click();", boton)
  end

  def click_finish
    @wait.until_visible(:id, "finish")
    boton = @driver.find_element(id: "finish")
    @driver.execute_script("arguments[0].scrollIntoView({block: 'center'});", boton)
    @driver.execute_script("arguments[0].click();", boton)
  end

  def mensaje_compra_exitosa
    @wait.until_visible(:class, "complete-header")
    @driver.find_element(class: "complete-header").text
  end

end