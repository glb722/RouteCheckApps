class CreateRouteSubTypes < ActiveRecord::Migration
  def change
    create_table :route_sub_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
