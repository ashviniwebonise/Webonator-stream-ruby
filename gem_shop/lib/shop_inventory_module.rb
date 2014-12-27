module ShopInventoryModule
  def ShopInventoryModule.display_product
    f=File.open('inventory','r')
    f.each_line do |line|
      puts line
    end
    f.close
  end
end