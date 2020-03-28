class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to user_path(current_user.id), notice: 'ノートを作成しました'
    else
      render 'new'
    end
  end

  def index
    @notes = Note
               .all
               .with_user
               .with_likes
               .page(params[:page]).per(10).reverse_order
  end

  def show
    @user = User.find(@note.user_id)
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to user_path(current_user.id), notice: 'ノートを編集しました'
    else
      render 'edit'
    end
  end

  def destroy
    @note.destroy
    redirect_to user_path(current_user.id), notice: 'ノートを削除しました'
  end

  def search
    @notes = Note.search(params[:search]).reverse_order
  end

private

  def set_note
    @note = Note.find(params[:id])
  end

  def correct_user
    @user = @note.user
    unless @user.id == current_user.id
      redirect_to user_path(current_user.id)
    end
  end

  def note_params
    params.require(:note).permit(:user_id, :name, :title, :body)
  end

end
