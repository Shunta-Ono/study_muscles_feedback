class Admin::MusclesController < Admin::BaseController

  def new
    @muscle = Muscle.new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def muscle_params
    params.require(:muscle).permit(:genre_id, :name, :innervation, :action, :information)
  end

end
