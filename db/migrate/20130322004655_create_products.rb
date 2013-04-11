class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantitynHand
      t.float :Price
      t.float :CategoryID
      t.integer :VendorID

      t.timestamps
    end
  end
end
