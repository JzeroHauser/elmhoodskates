class Category < ActiveRecord::Base
  attr_accessible :name, :weight
  has_many :products
end
