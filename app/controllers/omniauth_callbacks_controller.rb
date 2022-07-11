class OmniauthCallbacksController < ApplicationController
    def twitter
        Current.user.twitter_accounts.create(
            name: auth.info.name,
            username: auth.info.nickname,
            image: auth.info.image,
            token: auth.credentials.token,
            secret: auth.credentials.secret,
            )
        redirect_to root_path, notice: "connected to twitter user succesfully"
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
