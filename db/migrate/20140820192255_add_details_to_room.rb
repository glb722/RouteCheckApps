class AddDetailsToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :route_sub_type_id, :integer
  end
end
