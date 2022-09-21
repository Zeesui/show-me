class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :job_name
      t.text :job_miaoshu
      t.integer :job_price
      t.text :lianxi_fangshi
      t.string :job_address
      t.boolean :job_action, default: true
      t.timestamps
    end
  end
end
