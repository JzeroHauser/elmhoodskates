class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Name
      t.integer :QuantityOnHand
      t.float :Price
      t.float :CategoryID
      t.integer :VendorID

      t.timestamps
    end
  end
end
