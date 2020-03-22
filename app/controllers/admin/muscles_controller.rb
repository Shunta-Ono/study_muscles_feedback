class Admin::MusclesController < Admin::BaseController
  before_action :authenticate_admin!
  before_action :set_muscle, only: [:show, :edit, :update, :destroy]

  def new
    @muscle = Muscle.new
    2.times { @muscle.muscle_images.build }
  end

  def create
    @muscle = Muscle.new(muscle_params)
    if @muscle.save
      redirect_to admin_muscle_path(@muscle.id), notice:'新しい筋肉を作成しました'
    else
      render action: :new
    end
  end

  def index
    @muscles = Muscle.where(genre_id: params[:genre_id]).page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end

  def update
    if @muscle.update(muscle_params)
      redirect_to admin_muscle_path(@muscle.id), notice:'筋肉を編集しました'
    else
      render action: :edit
    end
  end

  def destroy
    @muscle.destroy
    redirect_to admin_muscles_path
  end

  private

  def set_muscle
    @muscle = Muscle.find(params[:id])
  end

  def muscle_params
    params.require(:muscle).permit(:genre_id, :name, :innervation, :action, :origin, :insertion, :information, muscle_images_attributes:[:image, :_destroy, :id])
  end

end
