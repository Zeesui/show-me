class Skill < ApplicationRecord
  belongs_to :user
  has_many :skill_relations
  has_many :skill_members, :through => :skill_relations, :source => :user

  # def first_touch_skill
  #   self.first_touch = true
  #   self.save
  # end
end
