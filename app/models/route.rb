class Route < ActiveRecord::Base
	has_many :room
  	belongs_to :route_type
end
