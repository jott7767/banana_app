class AddMerchantIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :merchant_id, :bigint, index: true 
  end
end
