class GerenYonghu::JobsController < ApplicationController

  before_action :authenticate_user!

  layout 'geren_yonghu'

  def index
    @jobs = current_user.job_likes
  end

end
