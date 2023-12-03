require_relative 'main_application'
require_relative 'libs'


cart = Cart.new
MainApplication.get_items.each do |item|
    cart.add_item(item, 1)
    puts item.info+"\n"
    puts item.to_h
end

Cart.total_price(cart)
puts "Cart price:#{cart.total_price}"