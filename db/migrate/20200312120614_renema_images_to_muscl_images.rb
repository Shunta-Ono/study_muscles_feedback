class RenemaImagesToMusclImages < ActiveRecord::Migration[5.2]
  def change
    rename_table :images, :muscle_images
  end
end
