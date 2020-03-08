class Admin::BaseController < ApplicationController

  def after_sign_in_path_for(resource)
    admin_genres_path
  end

  def after_sign_up_path_for(resource)
    admin_genres_path
  end

end
