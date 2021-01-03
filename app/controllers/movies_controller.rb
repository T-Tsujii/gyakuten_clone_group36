require "csv"

class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    send_data render_to_string, filname: "movie_data.csv", type: :csv
  end
end
