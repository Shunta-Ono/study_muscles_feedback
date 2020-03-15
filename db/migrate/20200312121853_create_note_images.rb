class CreateNoteImages < ActiveRecord::Migration[5.2]
  def change
    create_table :note_images do |t|
      t.string :image_id, null: false
      t.references :note, foreign_key: true
      t.timestamps
    end
  end
end
