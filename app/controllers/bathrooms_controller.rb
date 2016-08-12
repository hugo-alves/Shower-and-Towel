class BathroomsController < ApplicationController
  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = current_user.bathrooms.new(bath_params)
    @bathroom.save
    redirect_to new_bathroom_path
  end

  def index
    # bathrooms near specific place that will be determined by geolocation API
    if params[:search].nil?
      @bathrooms = Bathroom.near([38.7107236, -9.152806199999999], 1)
      set_hash(@bathrooms)
    else
      @bathrooms = Bathroom.near(params[:search], 1)
      set_hash(@bathrooms)
    end
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @booking = Booking.new
    @hash = Gmaps4rails.build_markers(@bathroom) do |bath, marker|
      marker.lat bath.latitude
      marker.lng bath.longitude
    end

  end

  def set_hash(bathrooms)
    @hash = Gmaps4rails.build_markers(bathrooms) do |bath, markers|
      markers.lat bath.latitude
      markers.lng bath.longitude
    end
  end
  private

  def bath_params
    params.require(:bathroom).permit(:user_id, :picture, :picture_cache, :accepted_gender, :price, :address, :shampoo, :shower_gel, :towel, :category)
  end

end


# params[:bathroom]

# @user = current_user
