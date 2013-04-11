class ChangeColumnNameForVendorInProduct < ActiveRecord::Migration
    def change
        change_table :products do |t|
            t.rename :VendorID, :vendor_id
            t.rename :CategoryID, :category_id
        end
    end
end