class SearchController < ApplicationController
  def index
    @stations = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=ENV['NREL_API_KEY']&zip=#{params['q']}&radius=6.0")

    binding.pry
  end
end
