class ApplicationController < ActionController::Base
  def require_login
    if session[:login] 
    else
      redirect_to new_login_path
    end
  end
end
