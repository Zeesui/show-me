class GerenYonghu::SkillsController < ApplicationController

  layout 'geren_yonghu'

  def index
    @skills = current_user.skills
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save(skill_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :user_name, :usre_gender, :lianxi_phone, :user_wechat,
    :user_email, :conghe_jineng, :conghe_pingfen, :guowang_zuopin, :github_mail)
  end
end
