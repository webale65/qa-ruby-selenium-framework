class FormsPage

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  def open
    @driver.navigate.to("https://demoqa.com/automation-practice-form")
  end

  def completar_nombre(first_name)
    @driver.find_element(id: "firstName").send_keys(first_name)
  end

  def completar_apellido(last_name)
    @driver.find_element(id: "lastName").send_keys(last_name)
  end

  def completar_email(email)
    @driver.find_element(id: "userEmail").send_keys(email)
  end

  def seleccionar_genero_masculino
    gender = @driver.find_element(css: "label[for='gender-radio-1']")
    @driver.execute_script("arguments[0].click();", gender)
  end

  def completar_mobile(mobile)
    @driver.find_element(id: "userNumber").send_keys(mobile)
  end

  def enviar_formulario
    boton = @driver.find_element(id: "submit")
    @driver.execute_script("arguments[0].scrollIntoView(true);", boton)
    @driver.execute_script("arguments[0].click();", boton)
  end

  def titulo_modal
    modal_title = @wait.until do
      element = @driver.find_element(id: "example-modal-sizes-title-lg")
      element if element.displayed?
    end

    modal_title.text
  end

end