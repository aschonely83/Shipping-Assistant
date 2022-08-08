class CreateFinishedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :finished_products do |t|
      t.integer :pallets
      t.integer :boxes
      t.integer :user_id
      t.integer :retailer_id

      t.timestamps
    end
  end
end
