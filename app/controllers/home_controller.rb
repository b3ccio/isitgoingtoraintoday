class HomeController < ApplicationController

  def index
    if params[:latitude] && params[:longitude]
      @forecast = ForecastIO.forecast(params[:longitude], params[:latitude])
    end
  end
end
