class EquipmentThingsToCheck < ActiveRecord::Base
	has_and_belongs_to_many :equipment
	has_and_belongs_to_many :route_sub_type
end
