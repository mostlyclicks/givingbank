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

	def vote_limit?
		
	end
	



end


	#def check_day(value, current_user)
	#	current_day = Time.now
	#	@vote_count ||= 4
#
	#	if current_day.day == Time.now.day && @vote_count < 3
	#		@charity.increase_evaluation(:votes, value, current_user)
	#		#vote_count = vote_count + 1
	#	else
	#		@charity.decrease_evaluation(:votes, value, current_user)
	#	end
#
	#end


	#def vote_limit(value, current_user)
	#	#check to see if there are more than 3 votes
	#	
	#	if @vote_count < 3
	#		@charity.increase_evaluation(:votes, value, current_user)
	#		@vote_count += 1
	#	else
	#		@charity.decrease_evaluation(:votes, value, current_user)
	#		@vote_count -= 1
	#	end
	#end


# Check to see if user has 3 positive votes
# ...with day?
# Attach whole Koala user thing...