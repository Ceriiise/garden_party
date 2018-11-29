class ProfilesController < ApplicationController
skip_before_action :authenticate_user!, only: [:home, :show, :index]
before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def show
    authorize @profile
  end

  def edit
    authorize @profile
  end

  def update
    if @profile.update(profile_params)
      authorize @profile
      redirect_to profile_path(@profile)
    else
      raise
    end
  end

  private

  def set_profile
    @profile = current_user
  end

  def profile_params
    params.require(:user).permit(:photo, :first_name, :last_name, :email, :description)
  end
end
