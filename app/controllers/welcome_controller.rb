class WelcomeController < ApplicationController
  def index
    @name = params[:name] || "Guest"
  end
end
