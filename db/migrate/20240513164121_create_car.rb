class CreateCar < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :horsepower
      t.boolean :EV

      t.timestamps
    end
  end
end
