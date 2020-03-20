class Admin::MusclesController < Admin::BaseController
  before_action :authenticate_admin!

  def new
    @muscle = Muscle.new
    2.times { @muscle.muscle_images.build }
  end

  def create
    @muscle = Muscle.new(muscle_params)
    if @muscle.save
      redirect_to admin_muscles_path, notice:'新しい筋肉を作成しました'
    else
      render action: :new
    end
  end

  def index
    @muscles = Muscle.all
  end

  def show
    @muscle =Muscle.find(params[:id])
  end

  def edit
    @muscle = Muscle.find(params[:id])
  end

  def update
    @muscle = Muscle.find(params[:id])
    if @muscle.update(muscle_params)
      redirect_to admin_muscle_path(@muscle.id), notice:'筋肉を編集しました'
    else
      render action: :edit
    end
  end

  def destroy
    @muscle = Muscle.find(params[:id])
    @muscle.destroy
    redirect_to admin_muscles_path
  end

  private

  def muscle_params
    params.require(:muscle).permit(:genre_id, :name, :innervation, :action, :origin, :insertion, :information, muscle_images_attributes:[:image, :_destroy, :id])
  end

end
