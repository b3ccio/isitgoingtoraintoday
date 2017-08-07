class HomeController < ApplicationController

  def index
    if params[:latitude] && params[:longitude]
      forecast = ForecastIO.forecast(params[:latitude], params[:longitude])
      render json: {forecast: forecast}
    end
  end
end
