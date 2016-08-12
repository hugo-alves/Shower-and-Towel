class BathroomsController < ApplicationController
  before_action :set_bathroom, only: [:show, :edit, :update, :destroy]

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = current_user.bathrooms.new(bath_params)
    @bathroom.save
    redirect_to bathroom_path(@bathroom)
  end
  def index
    if params[:search].nil?
      ip = request.remote_ip
      @bathrooms = Bathroom.near("#{ip}", 10)
      set_hash(@bathrooms)
    else
      @bathrooms = Bathroom.near(params[:search], 10)
      set_hash(@bathrooms)
    end
  end

  def edit
  end

  def update
    @bathroom.update(bath_params)
    redirect_to users_bathrooms_path
  end

  def show
    # @bathroom = Bathroom.find(params[:id])
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

  def destroy
    @bathroom.destroy
    redirect_to users_bathrooms_path
  end

  private

  def bath_params
    params.require(:bathroom).permit(:description, :user_id, :picture, :picture_cache, :accepted_gender, :price, :address, :shampoo, :shower_gel, :towel, :category)
  end

  def set_bathroom
    @bathroom = Bathroom.find(params[:id])
  end

end


# params[:bathroom]

# @user = current_user
