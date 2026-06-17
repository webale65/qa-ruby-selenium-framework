require 'selenium-webdriver'

driver = nil

begin
  driver = Selenium::WebDriver.for :chrome

  html_path = File.expand_path("test_page.html", __dir__)
  driver.navigate.to "file:///#{html_path}"

  input = driver.find_element(id: "nombre")
  input.send_keys("Alejandro")

  boton = driver.find_element(id: "btnSaludar")
  boton.click

  resultado = driver.find_element(id: "resultado").text

  if resultado == "Hola Alejandro"
    puts "TEST PASÓ ✅"
  else
    puts "TEST FALLÓ ❌"
    puts "Esperado: Hola Alejandro"
    puts "Obtenido: #{resultado}"
  end

  sleep 2

ensure
  begin
    driver&.quit
  rescue
    puts "El navegador ya estaba cerrado."
  end
end