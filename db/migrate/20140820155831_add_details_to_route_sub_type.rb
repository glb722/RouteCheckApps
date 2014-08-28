class AddDetailsToRouteSubType < ActiveRecord::Migration
  def change
    add_column :route_sub_types, :route_type_id, :integer
  end
end
