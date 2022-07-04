class PasswordResetController < ApplicationController

    def index
    end

    def create
        @user = User.find_by_email(params[:email])
        if(@user.present?)
            PasswordMailer.with(user: @user).reset.deliver_now
            render plain: @user.signed_id(expires_in: 10.minutes, purpose:"password_reset")
            return
        end
        redirect_to password_reset_path , alert: "Invalid email"
    end

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
        rescue ActiveSupport::MessageVerifier::InvalidSignature  => e
            redirect_to root_path, alert: "Your forget password token has expired"
    end

    def update
        @user = User.find_signed!(params[:token], purpose: "password_reset")

        if @user.update(user_update_password_params)
            redirect_to sign_in_path, notice: "Your password has been reseted, please sign in"
        else
            render :edit
        end
    end

    private

    def user_update_password_params
        params.require(:user).permit(:password,:password_confirmation)
    end

    
end