class AddRouteIdToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :route_id, :integer
  end
end
