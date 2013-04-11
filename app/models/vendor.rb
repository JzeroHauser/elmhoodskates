class Vendor < ActiveRecord::Base
  attr_accessible :name, :vendor_id
  has_many :products
  belongs_to :vendor
end
