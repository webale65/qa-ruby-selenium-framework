require_relative '../utils/wait_helper'

class SaludoPage

  def initialize(driver)
    @driver = driver
    @wait = WaitHelper.new(driver)
  end

  def escribir_nombre(nombre)
    @driver.find_element(id: "nombre").send_keys(nombre)
  end

  def click_saludar
    @driver.find_element(id: "btnSaludar").click
  end

  def resultado
    @wait.until_visible(:id, "resultado")
    @driver.find_element(id: "resultado").text
  end

end