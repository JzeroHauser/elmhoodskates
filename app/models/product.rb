class Product < ActiveRecord::Base
  attr_accessible :CategoryID, :Name, :Price, :QuantityOnHand, :VendorID
end
