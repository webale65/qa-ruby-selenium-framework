require_relative '../utils/wait_helper'

class CartPage

  def initialize(driver)
    @driver = driver
    @wait = WaitHelper.new(driver)
  end

  def nombre_producto
    @wait.until_visible(:class, "inventory_item_name")
    @driver.find_element(class: "inventory_item_name").text
  end

  def click_checkout
    @wait.until_visible(:id, "checkout")
    @driver.find_element(id: "checkout").click
  end

end