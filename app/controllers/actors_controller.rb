class ActorsController < ApplicationController
#  skip_before_action:verify_authenticity_token

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actors_path
		else
			render :new
    end
  end

	private
  	def actor_params
    	params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url)
  	end

end