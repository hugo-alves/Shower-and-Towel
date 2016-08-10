class BathroomsController < ApplicationController
<<<<<<< HEAD
  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = current_user.bathrooms.new(bath_params)
    @bathroom.save
    redirect_to new_bathroom_path
  end

  private

  def bath_params
    params.require(:bathroom).permit(:user_id, :accepted_gender, :price, :address, :shampoo, :shower_gel, :towel, :category)
  end

  def index
    @bathrooms = Bathroom.all
  end

  def show
    @bathroom = Bathroom.find(params[:id])
  end

end


# params[:bathroom]

# @user = current_user