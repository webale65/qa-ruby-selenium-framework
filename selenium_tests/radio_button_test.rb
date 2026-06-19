require_relative '../utils/test_base'
require_relative '../pages/radio_button_page'

class RadioButtonTest < TestBase

  def setup
    super
    @radio_page = RadioButtonPage.new(@driver)
  end

  def test_seleccionar_yes

    @radio_page.seleccionar_yes

    assert_equal(
      "Yes",
      @radio_page.mensaje_resultado
    )

  end

end