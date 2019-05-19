class CreateInvAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :inv_animals do |t|
      t.integer :animal_id
      t.integer :quantity

      t.timestamps
    end
    add_foreign_key :inv_animals, :animals
  end
end
