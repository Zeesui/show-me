class SkillsController < ApplicationController

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

  def edit
    @skill = Skill.find_by(params[:user_id])
  end

  def update
    @skill = Skill.find_by(params[:user_id])
    if @skill.update(skill_params)
      redirect_to edit_path
    end
  end
  private

  def skill_params
    params.require(:skill).permit(:user_id, :user_name, :usre_gender, :lianxi_phone, :user_wechat,
    :user_email, :conghe_jineng, :conghe_pingfen, :guowang_zuopin, :github_mail)
  end
end
