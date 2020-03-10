class Admin::GenresController < Admin::BaseController

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
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to admin_genres_path
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.delete
    redirect_to admin_genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :image)
  end

end
