class AddOriginToMuscles < ActiveRecord::Migration[5.2]
  def change
    add_column :muscles, :origin, :string
  end
end
