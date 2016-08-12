class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def user_bathrooms
    @bathrooms = current_user.bathrooms
  end

  private

  def user_params
    params.require(:user).permit(:user_id)
  end
end
