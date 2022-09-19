class GerenYonghu::SkillsController < ApplicationController

  layout 'geren_yonghu'

  def geren_yonghu_first_touch
    if prams[:user_id].present?
      @skill = current_user.skills.find_by(params[:user_id])
      redirect_to :edit_geren_yonghu_path(@skill)
    else
      @skill = Skill.create(skill_params)
      @skill.user = current_user
    if @skill.save
      redirect_to geren_yonghu_skills_path
    else
      render :back
    end
  end
  end

  def index
    @skills = current_user.skills
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to geren_yonghu_skills_path
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find_by(params[:user_id])
  end

  def update
    @skill = Skill.find_by(params[:user_id])
    if @skill.update(skill_params)
      redirect_to edit_geren_yonghu_path
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:user_id, :user_name, :usre_gender, :lianxi_phone, :user_wechat,
    :user_email, :conghe_jineng, :conghe_pingfen, :guowang_zuopin, :github_mail)
  end
end
