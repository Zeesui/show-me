class Job < ApplicationRecord
  belongs_to :user
  has_many :job_relations
  has_many :user_members, :through => :job_relations, :source => :user

  

  def job_like_join!(user)
    user_members << user
  end

  def job_like_quit!(user)
    user_members.delete(user)
  end

end
