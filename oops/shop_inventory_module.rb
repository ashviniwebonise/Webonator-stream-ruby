# This module gives the details about common operations done by the user
# it can be customer or shopkeeper
module ShopModule
  def self.display_product
    f = File.open('inventory', 'r')
    f.each_line do |line|
      puts line
    end
    f.close
  end

  def self.searched_products
    contents = File.open('inventory', 'r') { |file| contents = file.read }
    puts contents
    puts 'enter product name'
    product_name = gets.chomp
    searched_product = /#{product_name}\s*\s\d+\s\w+\s\d+/.match(contents)
    puts searched_product
  end
end
