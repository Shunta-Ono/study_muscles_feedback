class RemoveNoteIdFromMuscleImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :muscle_images, :note_id
  end
end
