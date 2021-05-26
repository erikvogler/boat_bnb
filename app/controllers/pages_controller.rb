class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!")
    else

    end
  end
end
