class FlatsController < ApplicationController

  def index

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
