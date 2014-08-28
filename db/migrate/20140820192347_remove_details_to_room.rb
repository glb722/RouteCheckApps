class RemoveDetailsToRoom < ActiveRecord::Migration
  def change
    remove_column :rooms, :route_sub_type_id, :integer
  end
end
