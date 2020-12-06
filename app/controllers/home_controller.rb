class HomeController < ApplicationController
  before_action :authorize

  def index
    # Admins don't see anything on home page, so take them to teams page
    redirect_to '/teams' if logged_in? and current_user.is_admin?
  end
end
