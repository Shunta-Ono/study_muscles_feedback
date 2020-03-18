class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(note_params)
    @note.save
    redirect_to notes_path
  end

  def index
    @notes = Note.all
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

def note_params
  params.require(:note).permit(:user_id, :title, :name, :origin, :insertion, :innervation, :action, :body)
end

end
