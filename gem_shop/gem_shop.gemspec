require './lib/gem_shop/version.rb'
Gem::Specification.new do |s|
  s.name      =    'gem_shop'
  s.version   =    Shop::VERSION
  s.summary   =    'This is the gem of shop inventory'
  s.author    =    'Ashvini Bhosale'
  s.files     =     ['lib/gem_shop.rb','lib/gem_shop/version.rb','lib/main_menu.rb','lib/order.rb','lib/product.rb','lib/shop_inventory_module.rb']
  s.require_paths = ['lib']
  s.email     =     ['ashvini.bhosale@weboniselab.com']
  s.executables =	['gem_shop']
end

