class AddPhoneToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :integer
    add_column :users, :location, :string
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :admin, :boolean

    add_column :products, :user_id, :integer, foreign_key: true
    add_column :categories, :user_id, :integer, foreign_key: true
  end
end
