class CreateFishes < ActiveRecord::Migration
  def change
    create_table :fishes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :species
      
      t.timestamps
    end
  end
end
