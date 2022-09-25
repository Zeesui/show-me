class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def job_like
    @job = Job.find(params[:id])
  end
end
