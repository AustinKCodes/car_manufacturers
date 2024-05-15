class ChangeColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :title, :name
    rename_column :cars, :description, :horsepower
    add_column :cars, :EV, :boolean
    remove_column :cars, :horsepower, :string
    add_column :cars, :horsepower, :integer
  end
end
