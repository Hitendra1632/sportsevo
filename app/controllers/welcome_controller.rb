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
	def team_register
		fail
	end
	def current_event
	end
	def team_information
		@team_info=Team.where("team_id" => params[:id]).first
		@captian_info=Player.where("id" => @team_info.captian_id).first
		@player_info=Player.where("team_id" => params[:id])
	end
	def tmp
	end

end
