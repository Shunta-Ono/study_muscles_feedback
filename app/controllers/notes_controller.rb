class NotesController < ApplicationController

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
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to user_path(current_user.id)
  end

private

def note_params
  params.require(:note).permit(:user_id, :title, :name, :origin, :insertion, :innervation, :action, :body)
end

end
