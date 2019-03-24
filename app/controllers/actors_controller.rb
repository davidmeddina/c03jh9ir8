class ActorsController < ApplicationController
 skip_before_action:verify_authenticity_token

  def index
    @actors = Actor.all
  end

  def new

  end

  def create
    Actor.create(name: params[:new_actor_name], bio: params[:new_actor_bio], birth_date: params[:new_actor_bd],  birth_place: params[:new_actor_bp],image_url: params[:new_actor_photo])
    redirect_to actors_path
  end
end