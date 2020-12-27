class MoviesController < ApplicationController
  def csv_output
    @movies = Movie.all
    send_data render_to_string, filname: "movie_data.csv", type: :csv
  end
end
