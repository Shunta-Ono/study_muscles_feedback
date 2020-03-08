class CreateMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :muscles do |t|
      t.references :genre, foreign_key: true
      t.string :name, null: false
      t.string :innervation, null: false
      t.string :action, null: false
      t.text :information
      t.timestamps
    end
  end
end
