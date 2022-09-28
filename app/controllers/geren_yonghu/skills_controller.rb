class GerenYonghu::SkillsController < ApplicationController

  before_action :authenticate_user!
  before_action :bal_bal, only: [:index, :edit, :update, :skill_relation_like]

  layout 'geren_yonghu'


  def current_user_first_touch
    if current_user.user_first_touch?
      @skill = current_user.skills.find_by(params[:user_id])
      redirect_to geren_yonghu_skills_path #edit_geren_yonghu_path(@skill)
    else
      @skill = Skill.new
      @skill.user = current_user
      @skill.user.user_first_touch_skill
    if @skill.save
      redirect_to geren_yonghu_skills_path
    else
      back_url
    end
  end
  end

  def index
    #bal_bal
  end

  def edit
    #bal_bal
  end

  def update
    #bal_bal
    if @skill.update(skill_params)
      redirect_to geren_yonghu_skills_path
    end
  end

  def skill_relation_like
    #bal_bal
    @skill_relation_likes = @skill.skill_members
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :user_name, :user_gender, :lianxi_phone, :user_wechat,
    :user_email, :conghe_jineng, :conghe_pingfen, :guowang_zuopin, :github_mail)
  end

  def bal_bal
    @skills = current_user.skills
    @skill = @skills.find_by(params[:user_id])
  end

end
