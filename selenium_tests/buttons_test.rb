require_relative '../utils/test_base'
require_relative '../pages/buttons_page'

class ButtonsTest < TestBase

  def setup
    super
    @buttons_page = ButtonsPage.new(@driver)
  end

  def test_double_click
    @buttons_page.double_click

    assert_equal(
      "You have done a double click",
      @buttons_page.mensaje_double_click
    )
  end

  def test_right_click
    @buttons_page.right_click

    assert_equal(
      "You have done a right click",
      @buttons_page.mensaje_right_click
    )
  end

  def test_dynamic_click
    @buttons_page.dynamic_click

    assert_equal(
      "You have done a dynamic click",
      @buttons_page.mensaje_dynamic_click
    )
  end

end