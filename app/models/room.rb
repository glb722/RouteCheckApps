class Room < ActiveRecord::Base
	has_and_belongs_to_many :equipment
  	belongs_to :route
end
