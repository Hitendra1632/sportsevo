class WelcomeController < ApplicationController
	def index
	
	end
	def organizers
	end
	def contact
	end
	def about
	end
	def cheif_guest
	end
	def sponsors
	end
	def faq
	end
	def teams 
		@teams=Team.all
		@teams=@teams.to_a
		@teams.each do |team|
			team[:captain_name]=Player.where("id" => team.captain_id).pluck("name")
		end

	end
	def team_register
		
	end
	def current_event
	end
	def team_information
	  if user_signed_in?
		@team_already_register=Team.where("registered_email" => current_user.email).first
		if @team_already_register.present?
			@team_already_register
		 else
		 	@team_already_register=""
		end	
	  end
			@team_info=Team.where("team_id" => params[:id]).first
			@captain_info=Player.where("id" => @team_info.captain_id).first
			@player_info=Player.where("team_id" => params[:id])
	end
	def tmp
	end

end
