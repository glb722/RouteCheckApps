class RouteSubType < ActiveRecord::Base
	has_and_belongs_to_many :route_things_to_check
	belongs_to :route_type
	has_and_belongs_to_many :equipment_things_to_check
end
