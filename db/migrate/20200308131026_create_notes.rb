class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.references :muscle, foreign_key: true
      t.string :title
      t.text :body
      t.string :name
      t.string :innervation
      t.string :action
      t.timestamps
    end
  end
end
