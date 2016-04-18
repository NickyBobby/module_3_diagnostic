class SearchController < ApplicationController
  def index
    @stations = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=LPG,ELEC&zip=#{params['q']}&radius=6.0&limit=10&api_key=ENV['NREL_API_KEY']&format=JSON")
  end
end
