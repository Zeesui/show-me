class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.string :user_name
      t.string :user_gender
      t.integer :lianxi_phone
      t.string :user_wechat
      t.string :user_email
      t.string :conghe_jineng
      t.string :conghe_pingfen
      t.string :guowang_zuopin
      t.string :github_mail
      t.timestamps
    end
  end
end
