class StampsController < ApplicationController

  def index
     @stamps = Stamp.all
  end

  def new
  	@stamp = Stamp.new
    @user = current_user
  end

  def stampcreatepage
    render '/stampcreatepage'
  end

  def create
  	@stamp = Stamp.new(stamp_params)
    @current = current_user
  	@stamp.update(stampcard: @current.stampcard)
    @current.stampcard.update(total:  @current.stampcard.total + 1)	
    @stamp.update(image: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Circlek.png/200px-Circlek.png")
    @current.save
  	@stamp.save!
  	redirect_to user_path(id: current_user)
  end

private

  def stamp_params
  	params.require(:stamp).permit(
      :name,
      :category
    )
  end

end