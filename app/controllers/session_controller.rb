class SessionController < ApplicationController

    def new
    end


    def create
        render plain: params[:email]
    end


    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out successfully"
    end
end