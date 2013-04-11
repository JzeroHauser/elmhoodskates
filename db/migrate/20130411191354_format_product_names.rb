class FormatProductNames < ActiveRecord::Migration
    def change
        change_table :products do |t|
            t.rename :Name, :name
            t.rename :Price, :price
            t.rename :QuantityOnHand, :quantity_on_hand 
        end
    end
end