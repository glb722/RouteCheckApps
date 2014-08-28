class AddDetailsToEquipmentRoom < ActiveRecord::Migration
  def change
    add_column :equipment_rooms, :equipment_id, :integer
    add_column :equipment_rooms, :room_id, :integer
  end
end
