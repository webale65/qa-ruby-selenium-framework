class RadioButtonPage

  def initialize(driver)
    @driver = driver
  end

  def seleccionar_yes
    boton = @driver.find_element(css: "label[for='yesRadio']")
    @driver.execute_script("arguments[0].click();", boton)
  end

  def mensaje_resultado
    @driver.find_element(class: "text-success").text
  end

end