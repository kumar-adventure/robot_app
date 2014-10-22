module ApplicationHelper

	def get_direction(face)
		direction_hash = { "N" => "North", "S" => "South", "E" => "East", "W" => "West" }
		return direction_hash["#{face}"]
	end
end
