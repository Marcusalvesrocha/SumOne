class Administrative::DashboardController < ApplicationController
  before_action :authenticate_admin!

  layout "Administrative"

  def index
  end
end
