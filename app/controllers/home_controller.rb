class HomeController < ApplicationController

  def index
  	@variable = 2
  	@user = current_user


  end

end
