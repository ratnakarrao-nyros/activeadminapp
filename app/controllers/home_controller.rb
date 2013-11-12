class HomeController < ApplicationController

  before_filter :authenticate_user!

  def index
   @projects = current_user.projects.includes(:tasks).all
  end
end
