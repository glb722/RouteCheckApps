class AddRouteNumberToRouteSubType < ActiveRecord::Migration
  def change
    add_column :route_sub_types, :route_number, :integer
  end
end
