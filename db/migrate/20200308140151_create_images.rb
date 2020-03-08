class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_id
      t.references :muscle, foreign_key: true
      t.references :note, foreign_key: true
      t.timestamps
    end
  end
end
