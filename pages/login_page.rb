class LoginPage

  def initialize(driver)
    @driver = driver
  end

  def ingresar_usuario(username)
    @driver.find_element(id: "user-name").send_keys(username)
  end

  def ingresar_password(password)
    @driver.find_element(id: "password").send_keys(password)
  end

  def click_login
    @driver.find_element(id: "login-button").click
  end

  def titulo_productos
    @driver.find_element(class: "title").text
  end

  def mensaje_error
    @driver.find_element(css: "[data-test='error']").text
  end

end