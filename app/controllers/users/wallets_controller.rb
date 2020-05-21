class Users::WalletsController < Users::ApplicationController

  def show
    @wallet = current_user.wallet
  end

  def mobile_view
    profile_token = params[:profile_token]
    
    if profile_token.nil?
      return head :forbidden 
    end

    @wallet = User.joins(:wallet).find_by(profile_token: profile_token)&.wallet

    if @wallet.nil?
      return head 404 
    end

    render :show
  end

  private


end
