class GardensController < ApplicationController
  def new
  end

  def index
    @gardens = current_user.gardens


  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end
end
