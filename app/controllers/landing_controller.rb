class LandingController < ApplicationController

    def index
      if user_signed_in?
        redirect_to dashboard_url
      else
        render :index
      end
    end

end
