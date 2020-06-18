class Api::ApiController < ApplicationController

  def index
    @games =  HTTP.get"https://www.thecocktaildb.com/api/json/v1/#{Rails.application.credentials.api_api[:api_key]}/search.php?s=margarita"
    render json: @games.parse
  end
end
