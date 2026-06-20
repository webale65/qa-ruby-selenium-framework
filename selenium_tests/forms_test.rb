require_relative '../utils/test_base'
require_relative '../pages/forms_page'
require_relative '../data/forms_data'

class FormsTest < TestBase

  def setup
  super
    @forms_page = FormsPage.new(@driver)
    @forms_page.open
  end

  def test_formulario_exitoso

    @forms_page.completar_nombre(
      FORMS_DATA[:first_name]
    )

    @forms_page.completar_apellido(
      FORMS_DATA[:last_name]
    )

    @forms_page.completar_email(
      FORMS_DATA[:email]
    )

    @forms_page.seleccionar_genero_masculino

    @forms_page.completar_mobile(
      FORMS_DATA[:mobile]
    )

    @forms_page.enviar_formulario

    assert_equal(
      "Thanks for submitting the form",
      @forms_page.titulo_modal
    )

  end

end