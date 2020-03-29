class Admin::GenresController < Admin::BaseController
  before_action :authenticate_admin!
  before_action :set_genre, only: [:edit, :update, :destroy]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "新しい部位を追加しました。"
      redirect_to admin_genres_path
    else
      @genres = Genre.all
      render action: :index
    end
  end

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def edit
    @genres = Genre.all
  end

  def update
    if @genre.update(genre_params)
      flash[:notice] = "部位を編集しました。"
      redirect_to admin_genres_path
    else
      @genres = Genre.all
      render action: :edit
    end
  end

  def destroy
    @genre.destroy
    flash[:alert] = "部位を削除しました。"
    redirect_to admin_genres_path
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name, :image)
  end

end
