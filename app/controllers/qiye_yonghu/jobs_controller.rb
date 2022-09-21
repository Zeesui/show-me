class QiyeYonghu::JobsController < ApplicationController

    before_action :authenticate_user!

    layout 'qiye_yonghu'

    def index
      @jobs = Job.all
    end

end
