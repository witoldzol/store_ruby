class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #redirection method (we override devise original path and point to user profile page)      
  def after_sign_in_path_for(resource)
        "/signedinuserprofile"
  end
  
end
