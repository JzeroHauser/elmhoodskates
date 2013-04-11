class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.integer :customer_id

      t.timestamps
    end
  end
end
