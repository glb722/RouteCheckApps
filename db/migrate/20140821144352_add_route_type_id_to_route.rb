class AddRouteTypeIdToRoute < ActiveRecord::Migration
  def change
    add_column :routes, :route_type_id, :integer
  end
end
