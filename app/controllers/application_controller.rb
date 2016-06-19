class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :team_registered
  def team_registered
  	  if user_signed_in?
  		team=Team.where("registered_email" => current_user.email).first
  	
  		if team.present?
  			return team.id
  	 	else
  	 		return ""
  		end
  	   else
  	   		return ""	
  	  end  	  

    end
  
end
