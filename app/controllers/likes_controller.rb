class LikesController < ApplicationController
  def create
    @note = Note.find(params[:note_id])
    like = current_user.likes.build(note_id: params[:note_id])
    like.save
  end

  def destroy
    @note = Note.find(params[:note_id])
    like = Like.find_by(note_id: params[:note_id], user_id: current_user.id)
    like.destroy
  end
end
