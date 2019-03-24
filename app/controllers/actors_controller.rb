class ActorsController < ApplicationController
 skip_before_action:verify_authenticity_token

  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
  end

  def create
    @actors = Actor.new(name: params[:name], bio: params[:bio], birth_date: params[:birth_date],  birth_place: params[:birth_place],image_url: params[:image_url])
    if @actors.save
      redirect_to actors_path
		else
			render :new
    end
  end
end