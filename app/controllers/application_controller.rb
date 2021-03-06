class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :enforce_login, :authorized_for?
    include ApplicationHelper
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def enforce_login
        return redirect_to login_path unless logged_in?
    end

    def authorized_for?(entry)
        entry.user == current_user
    end
end
