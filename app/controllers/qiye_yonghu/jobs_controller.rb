class QiyeYonghu::JobsController < ApplicationController

    before_action :authenticate_user!

    layout 'qiye_yonghu'

    def index
      @jobs = current_user.jobs
    end

    def new
      @job = Job.new
    end

    def create
      @job= Job.new(job_params)
      @job.user = current_user
      if @job.save
        redirect_to qiye_yonghu_jobs_path
      else
        back_url
      end
    end

    def edit
      @jobs = current_user.jobs
      @job = @jobs.find_by(params[:user_id])
    end

    def update
      @jobs = current_user.jobs
      @job = @jobs.find_by(params[:user_id])
      if @job.update(job_params)
        redirect_to qiye_yonghu_jobs_path
      else
        back_url
      end
    end

    def destroy
      @jobs = current_user.jobs
      @job = @jobs.find_by(params[:user_id])
      @job.destroy
    end

    private

    def job_params
      params.require(:jobs).permit(:user_id, :job_name, :job_miaoshu, :job_price, :lianxi_fangshi,
         :job_action, :job_address)
    end

end
