class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  def new
    @garden = Garden.new
    authorize @garden
  end

  def index
    @gardens = policy_scope(Garden)

    @gardens = Garden.where.not(latitude: nil, longitude: nil)

    @markers = @gardens.map do |garden|
      {
        lng: garden.longitude,
        lat: garden.latitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { garden: garden })
      }
    end
  end

  def my_gardens
    @gardens = current_user.gardens
    authorize @gardens
  end

  def show
    @garden = Garden.find(params[:id])
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    authorize @garden
    if @garden.save!
      redirect_to garden_path(@garden)
    else
      render 'new'
    end
  end

  def edit
    authorize @garden
  end

  def update
    @garden.update(garden_params)
    redirect_to garden_path(@garden)
  end

  def destroy
    authorize @garden
    @garden.destroy
    redirect_to my_gardens_path
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:name, :address, :description, :price, :swimming_pool, :barbecue, :max_guests, :photo)
  end
end
