class AddUserFirstTouchToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_first_touch, :boolean, default: false
  end
end
