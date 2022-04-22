class ApplicationController < ActionController::Base
	before_action :ensure_login

	protected
	    def ensure_login
	      redirect_to login_path unless session[:user_id]
	    end
end
