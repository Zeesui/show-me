class SkillsController < ApplicationController



  def index
    @skills = Skill.where(params[:user_ids])
  end

  def show
    @skill = Skill.find(params[:id])
  end

  
end
