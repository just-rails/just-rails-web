class SplashController < ApplicationController
  def index
    if authenticated_session?
      render 'authed'
    else
      render 'unauthed'
    end
  end

  private

  def authenticated_session?
    session[:authenticated] == true
  end
end
