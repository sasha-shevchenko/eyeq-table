class AddColumnstoRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :instagram_url, :string
    add_column :restaurants, :tripadvisor_url, :string
    add_column :restaurants, :facebook_url, :string
  end
end
