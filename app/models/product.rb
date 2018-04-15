class Product < ActiveRecord::Base
  has_many :users
  has_many :admins
  has_many :orders
end
