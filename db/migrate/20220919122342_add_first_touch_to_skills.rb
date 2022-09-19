class AddFirstTouchToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :first_touch, :boolean, default: false
  end
end
