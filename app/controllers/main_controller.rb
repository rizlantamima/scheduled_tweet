class MainController < ApplicationController

    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    # flash.now[:notice] = "Logged in succesfully" 
    # flash.now[:alert] = "Wrong email or password!" 
    end
end