class Job < ApplicationRecord
  belongs_to :user
  has_many :job_relations
  has_many :user_members, :through => :job_relations, :source => :user

end
