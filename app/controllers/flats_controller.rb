class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index] 

  skip_before_action :authenticate_user!, only: :index

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
      redirect_to root_path  
    else
      render :new
    end


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
    params.require(:flat).permit(:name, :address, :description, :price)
  end
end
