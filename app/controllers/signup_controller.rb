class SignupController < ApplicationController
  def index
  end

  def create
    session[:authenticated] = true
  end

  private

  def registration_params
    params.require(:registration).permit(:email)
  end
end
