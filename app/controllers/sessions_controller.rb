class SessionsController < ApplicationController

  def new

  end

  def create
    name = params.permit(:name)
    if name[:name] == (nil || "")
      redirect_to '/login' 
    else 
      session[:name] = name[:name]
      redirect_to welcome_path
    end
  end

  def welcome

  end

  def destroy
    session.delete(:name)
    redirect_to '/login'
  end

end
