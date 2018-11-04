class AddUserToParkingMeters < ActiveRecord::Migration[5.0]
  def change
    add_reference :parking_meters, :user, foreign_key: true
  end
end
