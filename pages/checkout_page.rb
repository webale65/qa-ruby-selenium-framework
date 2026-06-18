class CheckoutPage

  def initialize(driver)
    @driver = driver
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
    @driver.find_element(id: "continue").click
  end

  def click_finish
    @driver.find_element(id: "finish").click
  end

  def mensaje_compra_exitosa
    @driver.find_element(class: "complete-header").text
  end

end