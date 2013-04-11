class Product < ActiveRecord::Base
  attr_accessible :CategoryID, :Name, :Price, :QuantityOnHand, :VendorID
  belongs_to :category
  belongs_to :vendor
  has_many :line_items
end
