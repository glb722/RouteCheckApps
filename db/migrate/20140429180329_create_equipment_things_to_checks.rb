class CreateEquipmentThingsToChecks < ActiveRecord::Migration
  def change
    create_table :equipment_things_to_checks do |t|
      t.string :name

      t.timestamps
    end
  end
end
