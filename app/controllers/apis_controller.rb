class ApisController < ApplicationController
    require "http"
    def index
        response = HTTP.get("https://ghibliapi.herokuapp.com/films")
        render json: response.parse(:json)
    end
end
