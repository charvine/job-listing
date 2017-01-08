class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Good luck"
  end 
end
