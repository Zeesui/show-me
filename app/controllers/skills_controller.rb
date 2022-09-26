class SkillsController < ApplicationController



  def index
    @skills = Skill.where(params[:user_ids])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def skill_like_join
    @skill = Skill.find(params[:id])
    current_user.skill_like_join?(@skill)
    @skill.skill_like_join!(current_user)
    back_url
  end

  def skill_like_quit
    @skill = Skill.find(params[:id])
    current_user.skill_like_quit?(@skill)
    @skill.skill_like_quit!(current_user)
    back_url
  end


end
