class PasswordsController < ApplicationController
    before_action :require_user_sign_in!
    def edit
    end

    def update
        if Current.user.update(update_password_params)
            redirect_to root_path, notice: "Password successfully changed"
            return
        end

        render :edit
    end


    private


    def update_password_params
        params.require(:user).permit(:password,:password_confirmation)
    end
end