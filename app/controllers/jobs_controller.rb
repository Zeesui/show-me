class JobsController < ApplicationController

  before_action :authenticate_user!, only: [:job_like_join, :job_like_quit]

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def job_like_join
    @job = Job.find(params[:id])
    current_user.job_like_join?(@job)
    @job.job_like_join!(current_user)
    back_url
  end

  def job_like_quit
    @job= Job.find(params[:id])
    current_user.job_like_quit?(@job)
    @job.job_like_quit!(current_user)
    back_url
  end
end
