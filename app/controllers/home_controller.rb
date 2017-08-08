class HomeController < ApplicationController

  def index
    if params[:latitude] && params[:longitude]
      puts "In forecast"
      @forecast = ForecastIO.forecast(params[:latitude], params[:longitude])
    end
  end
end
