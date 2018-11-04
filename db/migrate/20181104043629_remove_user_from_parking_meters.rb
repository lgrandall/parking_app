class RemoveUserFromParkingMeters < ActiveRecord::Migration[5.0]
  def change
    remove_column :parking_meters, :user_id
  end
end
