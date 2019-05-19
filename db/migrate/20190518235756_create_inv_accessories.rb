class CreateInvAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :inv_accessories do |t|
      t.integer :accessory_id
      t.integer :size_id
      t.integer :quantity

      t.timestamps
    end
    add_foreign_key :inv_accessories, :accessories
    add_foreign_key :inv_accessories, :sizes
  end
end
