class Skill < ApplicationRecord
  belongs_to :user
  has_many :skill_relations
  has_many :skill_members, :through => :skill_relations, :source => :user

  def skill_like_join!(user)
    skill_members << user
  end

  def skill_like_quit!(user)
    skill_members.delete(user)
  end

  # def first_touch_skill
  #   self.first_touch = true
  #   self.save
  # end
end
