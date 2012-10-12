class CharitiesController < ApplicationController

	def index
		@charities = Charity.all
	end

	def vote
		current_user = User.first
		value = params[:type] == "up" ? 1 : -1
		@charity = Charity.find(params[:id])
		@charity.increase_evaluation(:votes, value, current_user)
		redirect_to :back, notice: "Thank you for voting"
	end

end


# Check to see if user has 3 positive votes
# ...with day?
# Attach whole Koala user thing...