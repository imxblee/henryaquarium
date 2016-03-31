class AddImagesToFishes < ActiveRecord::Migration
  def change
    add_column :fishes, :image, :string
  end
end
