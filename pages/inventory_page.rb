class InventoryPage

  def initialize(driver)
    @driver = driver
  end

  def agregar_mochila_al_carrito
    @driver.find_element(id: "add-to-cart-sauce-labs-backpack").click
  end

  def abrir_carrito
    @driver.find_element(class: "shopping_cart_link").click
  end

end