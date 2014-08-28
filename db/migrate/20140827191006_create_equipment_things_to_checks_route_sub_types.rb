class CreateEquipmentThingsToChecksRouteSubTypes < ActiveRecord::Migration
  def change
    create_table :equipment_things_to_checks_route_sub_types do |t|
      t.integer :route_sub_type_id
      t.integer :equipment_things_to_check_id
    end
  end
end
