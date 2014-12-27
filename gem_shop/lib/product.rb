require_relative 'shop_inventory_module.rb'
# require_relative 'main_menu.rb'
# This class gives information about products and its details
class Product
  include ShopInventoryModule

  def product_list
    puts 'Select one:a.Add product b.Search c. Remove product d.List product'
    keeperip = gets.chomp
    case keeperip
    when 'a'
      puts 'You are adding data'
      self.add_product
    when 'b'
      puts 'You are searching data'
    when 'c'
      puts 'You are removing data'
      self.remove_product
    when 'd'
      puts 'You are listing data'
      ShopInventoryModule.display_product
    else
      puts 'default'
    end
  end

  def add_product
    choice = 'y'
    while choice != 'N'
      puts 'Enter product name'
      @product_name = gets.chomp
      puts 'Enter product price'
      @product_price = gets.chomp
      puts 'Enter product company name'
      @company_name = gets.chomp
      puts 'Enter stock item'
      stock_item = gets.chomp
      f = File.open('inventory', 'a+')
      f.puts "#{@product_name}#{@product_price}#{@company_name}#{@stock_item}"
      f.close
      puts 'do you want to continue or not??y/n'
      choice = gets.chomp
      # product_id+ = 1;
    end
  end

  def remove_product
    puts 'enter product name that you want to remove'
    @remove = gets.chomp

    file_contents = File.read('inventory')

    removed_product = file_contents.gsub(/#{remove}\s\w+\s\w+\s\w+/, ' ')
    puts removed_product
    File.open('inventory', 'w') { |file| file.puts removed_product }
  end
end
#prodobj=new Product
#prodobj.add_product