class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :skills
         has_many :jobs

         has_many :job_relations
         has_many :job_likes, :through => :job_relations, :source => :job

         def user_first_touch_skill
           self.user_first_touch = true
           self.save
         end
    
         def job_like_join?(job)
           job_likes << job
         end

         def job_like_quit?(job)
           job_likes.delete(job)
         end
end
