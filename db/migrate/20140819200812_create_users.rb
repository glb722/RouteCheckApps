class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :eid

      t.timestamps
    end
  end
end
