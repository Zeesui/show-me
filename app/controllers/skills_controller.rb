class SkillsController < ApplicationController

  def user_first_skills
    if params[:id].present?
      @skill = Skill.new(skill_params)
      redirect_to new_skill_path
    else
      redirect_to edit_skill_path
    end

  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
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
