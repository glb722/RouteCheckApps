class CreateEquipmentRooms < ActiveRecord::Migration
  def change
    create_table :equipment_rooms do |t|

      t.timestamps
    end
  end
end
