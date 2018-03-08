class AddSlugToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :slug, :string, unique: true
    add_column :categories, :slug, :string, unique: true
  end
end
