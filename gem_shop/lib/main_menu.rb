require File.expand_path('../order',__FILE__)
require File.expand_path('../product',__FILE__)

class FileAccess
  def usertype
    puts'This is the inventory shop'
    puts 'Who are you customer or shopkeeper 1:customer 2:shopkeeper'
    option=gets.chomp
     case option
       when '1'
       puts 'you are customer'
       ::Order.new.order_list
       #order_Obj.order_list

        when '2'
          puts'you are shopkeeper'
          product_obj = Product.new
          product_obj.product_list
        else
        puts 'wrong choice'
      end
    end
  end
  