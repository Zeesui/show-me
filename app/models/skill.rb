class Skill < ApplicationRecord
  belongs_to :user

  def first_touch_skill
    self.first_touch = true
    self.save
  end
end
