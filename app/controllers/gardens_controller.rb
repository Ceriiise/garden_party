class GardensController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def new
    @garden = Garden.new
  end

  def index
    @gardens = Garden.all
  end

  def my_gardens
    @gardens = current_user.gardens
  end

  def show
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    if @garden.save!
      redirect_to garden_path(@garden)
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def delete
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to my_garden_path
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :address, :description, :price, :swimming_pool, :barbecue, :max_guests)
  end
end
