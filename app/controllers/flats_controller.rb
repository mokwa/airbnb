class FlatsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @flats = Flat.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def find_flat
    @flat = flat_params.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :user_id)
  end
end
