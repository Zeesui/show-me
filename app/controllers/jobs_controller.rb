class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def job_like_join
    @job = Job.find(params[:id])
    current_user.job_like_join?(@job)
    back_url
  end

  def job_like_quit
    @job= Job.find(params[:id])
    current_user.job_like_quit?(@job)
    back_url
  end
end
