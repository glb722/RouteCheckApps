class RouteThingsToCheck < ActiveRecord::Base
	has_and_belongs_to_many :route_sub_types
end
