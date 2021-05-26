class DashboardsController < ApplicationController
  skip_after_action :verify_authorized, only: :index

  def index
    @user = current_user

  end
end
