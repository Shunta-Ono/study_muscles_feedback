class MusclesController < ApplicationController
  def index
    @muscles = Muscle.where(genre_id: params[:genre_id])
    @genres = Genre.all
  end

  def show
    @muscle = Muscle.find{params[:id]}
  end
end
