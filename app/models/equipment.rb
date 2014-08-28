class Equipment < ActiveRecord::Base
	has_and_belongs_to_many :rooms 
  	has_and_belongs_to_many :equipment_things_to_check
end
