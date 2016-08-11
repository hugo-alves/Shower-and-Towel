class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @booking = Booking.new
  end
  def create
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = current_user.bookings.create(booking_params.merge(bathroom_id: @bathroom.id, user_id: current_user.id, price: @bathroom.price, book_time: params[:booking][:bookings][:book_time] ))
    
    redirect_to bathroom_path(@bathroom.id), notice: "Your booking has been created..."
  end

  private
    def booking_params
      params.require(:booking).permit(:book_time, :user_id, :bathroom_id, :price)
    end
end

