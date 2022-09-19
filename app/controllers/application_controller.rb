class ApplicationController < ActionController::Base

  def back_url
		redirect_back fallback_location: root_path
	end
end
