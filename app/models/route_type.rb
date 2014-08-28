class RouteType < ActiveRecord::Base
	has_many :routes
	has_many :route_sub_types
end
