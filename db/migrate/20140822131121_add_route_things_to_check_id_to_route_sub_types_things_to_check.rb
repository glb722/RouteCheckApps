class AddRouteThingsToCheckIdToRouteSubTypesThingsToCheck < ActiveRecord::Migration
  def change
    add_column :route_sub_types_things_to_checks, :route_things_to_check_id, :integer
  end
end
