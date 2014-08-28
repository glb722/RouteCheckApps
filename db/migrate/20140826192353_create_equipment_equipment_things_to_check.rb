class CreateEquipmentEquipmentThingsToCheck < ActiveRecord::Migration
  def change
    create_table :equipment_equipment_things_to_checks do |t|
      t.integer :equipment_id
      t.integer :equipment_things_to_check_id
    end
  end
end
