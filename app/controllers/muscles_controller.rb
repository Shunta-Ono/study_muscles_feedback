class MusclesController < ApplicationController

  def index
    @muscles = Muscle.where(genre_id: params[:genre_id])
    @genres = Genre.all
  end

  def show
    @muscle = Muscle.find(params[:id])
    @note = Note.new
  end

  def search
    @muscles = Muscle.search(params[:search])
  end
end
