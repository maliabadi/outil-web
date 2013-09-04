class ProfileController < ApplicationController
  include ApplicationHelper
  before_filter :authenticate_user!, :only => [:mine, :edit, :submit]

  def mine
    @user = current_user
    render "profile#show"
  end

  def edit
    @user = current_user
  end

  def submit

  end

  def show
    unless params[:username].present?
      redirect_to dashboard_url
    end
    @user = User.find_by_username(parms[:username])
    unless @user
      redirect_to dashboard_url
    end
  end

end
