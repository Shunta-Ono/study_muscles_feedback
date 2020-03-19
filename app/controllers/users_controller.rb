class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @notes = Note.all
    @note = @user.notes
  end
end
