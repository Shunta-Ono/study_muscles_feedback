class AddInsertionToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :insertion, :string
  end
end
