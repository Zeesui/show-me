class QiyeYonghu::SkillsController < ApplicationController

  before_action :authenticate_user!

  layout 'qiye_yonghu'

  def index
    @skills = current_user.skill_likes
  end

end
