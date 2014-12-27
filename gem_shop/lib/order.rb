require_relative 'shop_inventory_module.rb'
# require_relative 'main_menu.rb'
# This class gives information about orders and its details
class Order
  include ShopInventoryModule

  def order_list
    puts "Enter operations you want to perform a.List b.search c.buy"
    userip=gets.chomp

    case userip
    when "a"
      puts "You are listing data"
      ShopInventoryModule.display_product
    when "b"
      puts "You are searching data"
    when "c"
      puts "You are buying data"
      ShopInventoryModule.buy_product
    else
      puts "default"
    end
  end

  def buy_product
    puts "Enter product name"
    product_nm=gets.chomp

    puts "Enter credit card info"
    credit_info=gets.chomp

    f=File.open('orders','a+')

    f.puts "#{product_nm}  #{credit_info}"
    f.close
  end
end
