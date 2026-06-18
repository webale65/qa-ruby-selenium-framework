class CartPage

  def initialize(driver)
    @driver = driver
  end

  def nombre_producto
    @driver.find_element(class: "inventory_item_name").text
  end

end