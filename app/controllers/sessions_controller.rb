class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:password])
            session[:id] = user.id
            redirect_to user_path(user)
        else
            redirect_to login_path
        end
    end

    def destroy
        reset_session
        redirect_to login_path
    end
end