require_relative '../utils/test_base'
require_relative '../pages/checkbox_page'

class CheckboxTest < TestBase

  def setup
    super
    @checkbox_page = CheckboxPage.new(@driver)
  end

  def test_seleccionar_home
    @checkbox_page.seleccionar_home

    assert_includes(
      @checkbox_page.resultado,
      "Home"
    )
  end

end