class JobRelation < ApplicationRecord
  belongs_to :user
  belongs_to :job
end
