require_relative '../utils/test_base'
require_relative '../pages/login_page'
require_relative '../pages/inventory_page'
require_relative '../pages/cart_page'
require_relative '../pages/checkout_page'
require_relative '../data/login_data'
require_relative '../data/checkout_data'

class PurchaseFlowTest < TestBase

  def setup
    super
    @login_page = LoginPage.new(@driver)
    @inventory_page = InventoryPage.new(@driver)
    @cart_page = CartPage.new(@driver)
    @checkout_page = CheckoutPage.new(@driver)
  end

  def test_agregar_producto_al_carrito
    @login_page.ingresar_usuario(LOGIN_VALID_DATA[:username])
    @login_page.ingresar_password(LOGIN_VALID_DATA[:password])
    @login_page.click_login

    @inventory_page.agregar_mochila_al_carrito
    @inventory_page.abrir_carrito

    assert_equal "Sauce Labs Backpack", @cart_page.nombre_producto
  end

  def test_compra_completa
    @login_page.ingresar_usuario(LOGIN_VALID_DATA[:username])
    @login_page.ingresar_password(LOGIN_VALID_DATA[:password])
    @login_page.click_login

    @inventory_page.agregar_mochila_al_carrito
    @inventory_page.abrir_carrito

    @checkout_page.click_checkout
    @checkout_page.completar_nombre(CHECKOUT_DATA[:first_name])
    @checkout_page.completar_apellido(CHECKOUT_DATA[:last_name])
    @checkout_page.completar_codigo_postal(CHECKOUT_DATA[:postal_code])
    @checkout_page.click_continue
    @checkout_page.click_finish

    assert_equal(
      "Thank you for your order!",
      @checkout_page.mensaje_compra_exitosa
    )
  end

end