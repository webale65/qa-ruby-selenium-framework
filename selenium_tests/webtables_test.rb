require_relative '../utils/test_base'
require_relative '../pages/webtables_page'
require_relative '../data/employee_data'

class WebTablesTest < TestBase

  def setup
  super
    @webtables_page = WebTablesPage.new(@driver)
    @webtables_page.open
  end

  def test_agregar_y_buscar_empleado

    @webtables_page.click_add

    @webtables_page.completar_nombre(
      EMPLOYEE_DATA[:first_name]
    )

    @webtables_page.completar_apellido(
      EMPLOYEE_DATA[:last_name]
    )

    @webtables_page.completar_email(
      EMPLOYEE_DATA[:email]
    )

    @webtables_page.completar_edad(
      EMPLOYEE_DATA[:age]
    )

    @webtables_page.completar_salario(
      EMPLOYEE_DATA[:salary]
    )

    @webtables_page.completar_departamento(
      EMPLOYEE_DATA[:department]
    )

    @webtables_page.click_submit

    @webtables_page.buscar_empleado(
      EMPLOYEE_DATA[:first_name]
    )

    assert_includes(
      @webtables_page.resultado_busqueda,
      EMPLOYEE_DATA[:first_name]
    )

  end

end