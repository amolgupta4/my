class UserController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  before_create :set_random_number
  def create
    byebug
    user = User.new(user_params)
    if user.save
      render 'successfully_created'
    else
      render 'validation_error'
  end



  private
  def user_params 
    params.require(:user).permit(:email, :password, :first_name, :last_name, :number)
  end


end
