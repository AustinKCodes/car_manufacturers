class CreateManufacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :origin
      t.boolean :is_adm
      t.integer :owned_brands

      t.timestamps
    end
  end
end
