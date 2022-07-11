class TwitterAccountsController < ApplicationController
  before_action :require_user_sign_in!
  before_action :set_twitter_account, only:[:destroy]

  # GET /twitter_accounts or /twitter_accounts.json
  def index
    @twitter_accounts = Current.user.twitter_accounts
  end

  # GET /twitter_accounts/1 or /twitter_accounts/1.json
  def show
  end


  # DELETE /twitter_accounts/1 or /twitter_accounts/1.json
  def destroy
    @twitter_account.destroy

    respond_to do |format|
      format.html { redirect_to twitter_accounts_url, notice: "Twitter account @#{@twitter_account.username} was successfully disconnected." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitter_account
      @twitter_account = Current.user.twitter_accounts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twitter_account_params
      params.fetch(:twitter_account, {})
    end
end
