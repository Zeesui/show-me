class CreateSkillRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :skill_relations do |t|
      t.integer :user_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
