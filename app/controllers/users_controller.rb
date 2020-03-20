class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user

  def show
    @user = User.find(params[:id])
    @notes = Note.all
    @note = @user.notes
  end

  private

  def correct_user
    @user = User.find(params[:id])
    unless @user.id == current_user.id
      redirect_to user_path(current_user.id)
    end
  end

end
