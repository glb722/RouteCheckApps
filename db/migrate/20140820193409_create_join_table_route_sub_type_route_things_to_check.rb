class CreateJoinTableRouteSubTypeRouteThingsToCheck < ActiveRecord::Migration
  def change
    create_join_table :route_sub_types, :route_things_to_checks do |t|
      # t.index [:route_sub_type_id, :route_things_to_check_id]
      # t.index [:route_things_to_check_id, :route_sub_type_id]
    end
  end
end
