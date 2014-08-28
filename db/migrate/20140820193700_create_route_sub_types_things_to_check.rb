class CreateRouteSubTypesThingsToCheck < ActiveRecord::Migration
  def change
    create_table :route_sub_types_things_to_checks do |t|
      t.integer :route_sub_type_id
    end
  end
end
