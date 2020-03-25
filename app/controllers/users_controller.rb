class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user

  def show
    @note = Note.new
    @notes = @user.notes.order(created_at: :desc)
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end

  private

  def correct_user
    @user = User.find(params[:id])
    unless @user.id == current_user.id
      redirect_to user_path(current_user.id)
    end
  end

end
