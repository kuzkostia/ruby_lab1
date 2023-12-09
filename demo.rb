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
# cart.remove_item(cart.items[3])
# Cart.total_price(cart)
# puts "Cart price:#{cart.total_price}"
# cart.show_all_items
# cart.remove_item(cart.items[2])
cart.save_to_file('new_json_file', :json)
cart.save_to_file('new_csv_file', :csv)
# Cart.total_price(cart)
# puts "Cart price:#{cart.total_price}"
# cart.delete_items