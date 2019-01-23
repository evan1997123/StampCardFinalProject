class HomeController < ApplicationController

  def index
  	@variable = User.all.size
  	@user = current_user


  end

end
