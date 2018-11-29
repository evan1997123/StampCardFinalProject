class StampsController < ApplicationController

  def index
     @stamps = stamps.all
  end

  def new
  	@stamp = Stamp.new

  end
  def create
  	@stamp = Stamp.new(stamp_params)
	@stamp.update(stampcard: current_user.stampcard)	
	@stamp.save
	redirect_to user_path(id: current_user)

  end
private
def stamp_params
	params.require(:stamp).permit(:achievement)
end

end