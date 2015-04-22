class WelcomeController < ApplicationController
	def index
	
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
			team[:captian_name]=Player.where("id" => team.captian_id).pluck("name")
		end

	end
	def team_register
		
	end
	def current_event
	end
	def team_information
		team_already_register=Team.where("registered_email" => current_user.email).first
		if team_already_register.present?
			team_admin=true
		end	
			@team_info=Team.where("team_id" => params[:id]).first
			@captian_info=Player.where("id" => @team_info.captian_id).first
			@player_info=Player.where("team_id" => params[:id])
	end
	def tmp
	end

end
