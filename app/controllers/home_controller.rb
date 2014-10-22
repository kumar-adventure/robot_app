class HomeController < ApplicationController
  def index
	if params[:x_coordinate].present? and params[:y_coordinate].present? and params[:face].present? and params[:move_to].present?
		direction = ['W', 'N', 'E', 'S']
		@x = params[:x_coordinate].to_i
		@y = params[:y_coordinate].to_i
		@face = params[:face]
		keyword = params[:move_to].upcase
		keyword_array = keyword.split(//)
		
		keyword_array.each do |key|	
			case key
			when "L"
				position = direction.index(@face)
				if position == 0
					@face = direction[3]
				elsif position == 1
					@face = direction[0]
				elsif position == 2
					@face = direction[1]
				else
					@face = direction[2]
				end
			when "R" 
				position = direction.index(@face)
				if position == 0
					@face = direction[1]
				elsif position == 1
					@face = direction[2]
				elsif position == 2
					@face = direction[3]
				else
					@face = direction[0]
				end
			when "M"
				direction = ['W', 'N', 'E', 'S']
				position = direction.index(@face)
				if position == 0
					@x = @x - 1
				elsif position == 1
					@y = @y + 1
				elsif position == 2
					@x = @x + 1
				elsif position == 3
					@y = @y - 1
				end
			end
		end
	end
  end
end







