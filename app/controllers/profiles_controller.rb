class ProfilesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :index]

  def show
    @profile = current_user
    authorize @profile
  end
end
