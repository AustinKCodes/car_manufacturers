class ChangeColumn2 < ActiveRecord::Migration[7.1]
  def change
    rename_column :cars, :manufacturers_id, :manufacturer_id
  end
end
