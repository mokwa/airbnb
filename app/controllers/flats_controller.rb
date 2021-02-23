class FlatsController < ApplicationController

  def index

  end

  def show

    find_flat
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
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price, :user_id)
  end
end
