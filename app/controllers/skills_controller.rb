class SkillsController < ApplicationController



  def index
    @skills = Skill.where(params[:user_ids])
  end

  def show
    @skill = Skill.find(params[:id])
  end
  private

  def skill_params
    params.require(:skill).permit(:user_id, :user_name, :usre_gender, :lianxi_phone, :user_wechat,
    :user_email, :conghe_jineng, :conghe_pingfen, :guowang_zuopin, :github_mail)
  end
end
