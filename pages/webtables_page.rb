require_relative '../utils/wait_helper'

  class WebTablesPage

    def initialize(driver)
      @driver = driver
      @wait = WaitHelper.new(driver)
    end

    def open
      @driver.navigate.to("https://demoqa.com/webtables")
    end

    def click_add
      @driver.find_element(id: "addNewRecordButton").click
    end

    def completar_nombre(nombre)
      @driver.find_element(id: "firstName").send_keys(nombre)
    end

    def completar_apellido(apellido)
      @driver.find_element(id: "lastName").send_keys(apellido)
    end

    def completar_email(email)
      @driver.find_element(id: "userEmail").send_keys(email)
    end

    def completar_edad(edad)
      @driver.find_element(id: "age").send_keys(edad)
    end

    def completar_salario(salario)
      @driver.find_element(id: "salary").send_keys(salario)
    end

    def completar_departamento(departamento)
      @driver.find_element(id: "department").send_keys(departamento)
    end

    def click_submit
      @driver.find_element(id: "submit").click
    end

    def buscar_empleado(texto)
      campo = @driver.find_element(id: "searchBox")
      campo.clear
      campo.send_keys(texto)
    end

    def resultado_busqueda
    @driver.find_element(tag_name: "body").text
    end

  end