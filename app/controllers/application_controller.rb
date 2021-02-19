class ApplicationController < ActionController::Base
    def current_user
        @current_user = User.find_by(id: session[:user]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def enforce_login
        return redirect_to login_path unless logged_in?
    end
end
