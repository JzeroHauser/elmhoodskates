class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst, :hst, :pst, :status
  belongs_to :customer
  has_many :line_items
end
