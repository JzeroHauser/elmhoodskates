class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :quantity_on_hand, :vendor_id
  belongs_to :category
  belongs_to :vendor
  has_many :line_items
end
