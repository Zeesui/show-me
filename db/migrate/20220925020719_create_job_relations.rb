class CreateJobRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :job_relations do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
