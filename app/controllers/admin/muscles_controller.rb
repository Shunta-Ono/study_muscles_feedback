class Admin::MusclesController < Admin::BaseController

  def new
    @muscle = Muscle.new
    @muscle.muscle_images.build
  end

  def create
    @muscle = Muscle.new(muscle_params)
    @muscle.genre_id = Genre.last.id
    if @muscle.save
      flash[:notice] = "新しい筋肉を作成しました"
      redirect_to admin_muscles_path
    else
      flash[:alert] = "筋肉の作成に失敗しました"
      render action: :new
    end
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
    params.require(:muscle).permit(:genre_id, :name, :innervation, :action, :information, muscle_images_attributes:[:image])
  end

end
