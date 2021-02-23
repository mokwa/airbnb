class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @flats = Flat.all
  end

  def show
    find_flat
  end

  def new
     @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def edit
    find_flat
  end

  def update
    find_flat
    @flat.update(flat_params)

    redirect_to flats_path
  end

  def destroy
    find_flat
    @flat.destroy
    redirect_to flats_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price)
  end
end
