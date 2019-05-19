class CreateInvAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :inv_animals do |t|
      t.belongs_to :animal, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
