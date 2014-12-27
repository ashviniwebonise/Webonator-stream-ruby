# This class provides database demonstration
require 'active_record'
require 'sqlite3'
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'data.db'
  #:dbfile  => 'a.db'
  )

ActiveRecord::Schema.define do
  create_table :people do |t|
    t.string :email
    t.string :name
    t.string :type
  end

  create_table :accounts do |t|
    t.integer :account_number
    t.integer :admin_id
  end

  create_table :posts do |t|
    t.string :content
    t.string :description
    t.integer :user_id
  end
end

class Person < ActiveRecord::Base
end

class User < Person
  has_many :posts
end

class Admin < Person
  has_many :accounts
end

class Account < ActiveRecord::Base
  belongs_to :admin
end

class Post < ActiveRecord::Base
  belongs_to :user
end

personfirst = Person.create(:email => 'ashumbhosale@gmail.com' , :name => 'ashvini bhosale' , :type => 'User')
personsecond = User.create(:email => 'ab@gmail.com' , :name => 'shivaji bhosale' , :type => 'User')
personthree = User.create(:email => 'abc@gmail.com' , :name => 'george medison' , :type => 'User')
personfour = Admin.create(:email => 'xyz@gmail.com' , :name => 'john bush' , :type => 'Admin')

postfirst = Post.new(:content => 'say gud morning', :description => 'Good morning to all users')
postsecond = Post.new(:content => 'say gud evening', :description => 'Good evening to all users')
postthree = Post.new(:content => 'say gud aftrnoon', :description => 'Good afternoon to all users')

puts postfirst.user = personfirst
puts postfirst.inspect
postfirst.save

puts postsecond.user = personsecond
puts postsecond.inspect
postsecond.save



accountfirst = Account.new(:account_number => 2301)
accounttwo = Account.new(:account_number => 2302)
accountthree = Account.new(:account_number => 2303)

puts accountfirst.admin = personfour
puts accountfirst.inspect
accountfirst.save

#postthree.save
#puts personfirst.inspect
#puts objectpersonsecond.inspect
#puts objectpostfirst.inspect
#puts objectpostsecond.inspect
