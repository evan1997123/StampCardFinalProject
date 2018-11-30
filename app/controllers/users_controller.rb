class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @names = Array.new()
    Achievement.all.each do |a| 
 		currentAchievementCategory = a.name
 		@names.push(currentAchievementCategory)
 	end 
 	@names.uniq!
  end

  def show
    @user = User.find(params[:id])
    @stamps = Stamp.where(stampcard_id: @user.stampcard.id)
    @names = Array.new()
    Achievement.all.each do |a| 
 		currentAchievementCategory = a.name
 		@names.push(currentAchievementCategory)
 	end 
 	@names.uniq!
  end

end
