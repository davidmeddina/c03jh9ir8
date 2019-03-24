class ActorsController < ApplicationController
 skip_before_action:verify_authenticity_token

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(params[:acto])
    if @actor.save
      redirect_to actors_path
		else
			render :new
    end
  end
end