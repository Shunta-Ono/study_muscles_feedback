class AddInsertionToMuscles < ActiveRecord::Migration[5.2]
  def change
    add_column :muscles, :insertion, :string
  end
end
