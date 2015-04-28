class TeamsController < ApplicationController
	before_action :authenticate_user!
	def index
		
	end
	def team_information
		
		
	end
	def team_register
		@team_color=["Red","Yellow","Black","Gray","Red","Orange"]
		team_already_register=Team.where("registered_email" => current_user.email).first
	    if  !team_already_register.present?
			
			if params[:team_name].present?
				team_info=Team.new
				team_info.name=params[:team_name]
				team_info.color=params[:team_color]
				team_info.place=params[:team_place]
				team_info.registered_email=current_user.email
				team_info.created_at=Time.now.to_i
				team_info.team_id=team_info.id.to_s
				captain_info=Player.new
				team_info.captain_id=captain_info.id
				captain_info.name=params[:captain_name]
				captain_info.team_id=team_info.id.to_s
				captain_info.phoneno=params[:captain_phoneno]
				captain_info.email=params[:captain_email]
				captain_info.designation="captain"
				captain_info.save
				for i in 1..15
					player_name="player"+i.to_s+"_name"
					player_name=player_name.to_sym
					player_phoneno="player"+i.to_s+"_phoneno"
					player_phoneno=player_phoneno.to_sym
					player_info=Player.new
					player_info.name=params[player_name]
					player_info.phoneno=params[player_phoneno]
					player_info.team_id=team_info.id.to_s
					player_info.designation="player"
					player_info.save
				end
				team_info.save
				redirect_to team_information_path(team_info.id)
			end	
			
		 else
		 	#flash[:notice]="You already register your team.Thanks you for registing your team."
  		    #@message =true
  		    redirect_to team_information_path(team_already_register.id)
		end
	end
	
     
end
