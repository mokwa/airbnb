class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      @flats = Flat.where("address ILIKE ?", "%#{params[:query]}%")
      @flats = @flats.where.not(user: current_user)
    else
      @flats = Flat.where.not(user: current_user)
    end

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def show
    find_flat
    @booking = Booking.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat), notice: "Flat added to your profile!"
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

    redirect_to flat_path(@flat)
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
    params.require(:flat).permit(:name, :address, :description, :price, photos: [])
  end
end

