class StampcardsController < ApplicationController

  def index
    #shouldn't be able to view all stampcards, only view all users and their stampcards
  end

  def new
  	@stampcard = Stampcard.new

  end
  def create
  	@stampcard = Stampcard.new(user: current_user, total: 0)
		@stampcard.save
		redirect_to user_path(id: current_user)

  end
end
