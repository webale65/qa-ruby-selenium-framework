require_relative '../utils/test_base'
require_relative '../pages/saludo_page'
require_relative '../data/saludo_data'

class SaludoTest < TestBase

  def setup
    super
    @saludo_page = SaludoPage.new(@driver)
  end

  def test_saludo_con_alejandro
    datos = SALUDO_DATA[0]

    @saludo_page.escribir_nombre(datos[:nombre])
    @saludo_page.click_saludar

    assert_equal datos[:resultado_esperado], @saludo_page.resultado
  end

  def test_saludo_con_qa_tester
    datos = SALUDO_DATA[1]

    @saludo_page.escribir_nombre(datos[:nombre])
    @saludo_page.click_saludar

    assert_equal datos[:resultado_esperado], @saludo_page.resultado
  end

end