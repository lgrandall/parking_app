class CreateParkingMeters < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_meters do |t|
      t.string :name
      t.decimal :lattitude
      t.decimal :longitude
      t.integer :status

      t.timestamps
    end
  end
end
