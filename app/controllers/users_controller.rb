class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if(@user.stampcard != nil)
    	@stamps = Stamp.where(stampcard_id: @user.stampcard.id)
    end
  end

end
