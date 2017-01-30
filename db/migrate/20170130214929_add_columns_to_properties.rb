class AddColumnsToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :street, :string
    add_column :properties, :state, :string
    add_column :properties, :zip_code, :integer
    add_column :properties, :latitude, :float
    add_column :properties, :longitude, :float
  end
end
