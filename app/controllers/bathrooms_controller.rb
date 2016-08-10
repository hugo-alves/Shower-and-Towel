class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
  end

end
