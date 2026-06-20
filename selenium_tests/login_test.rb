require_relative '../utils/test_base'
require_relative '../pages/login_page'
require_relative '../data/login_data'

class LoginTest < TestBase

  def setup
    super
    @login_page = LoginPage.new(@driver)
    @login_page.open
  end

  def test_login_exitoso
    @login_page.ingresar_usuario(LOGIN_VALID_DATA[:username])
    @login_page.ingresar_password(LOGIN_VALID_DATA[:password])
    @login_page.click_login

    assert_equal "Products", @login_page.titulo_productos
  end

  def test_login_invalido
    @login_page.ingresar_usuario(LOGIN_INVALID_DATA[:username])
    @login_page.ingresar_password(LOGIN_INVALID_DATA[:password])
    @login_page.click_login

    assert_includes(
      @login_page.mensaje_error,
      "Username and password do not match"
    )
  end

end