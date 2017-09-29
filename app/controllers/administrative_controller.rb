class AdministrativeController < ApplicationController
  before_action :authenticate_admin!

  layout "Administrative"
end
