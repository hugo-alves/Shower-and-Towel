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
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    # byebug
    # @coordinates = { lat: @bathroom.latitude, lng: @bathroom.longitude }
    @hash = Gmaps4rails.build_markers(@bathroom) do |bath, marker|
      marker.lat bath.latitude
      marker.lng bath.longitude
    end
  end


  private

  def bath_params
    params.require(:bathroom).permit(:user_id, :accepted_gender, :price, :address, :shampoo, :shower_gel, :towel, :category)
  end

end


# params[:bathroom]

# @user = current_user
