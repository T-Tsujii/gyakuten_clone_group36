class MoviesController < ApplicationController
  

  def index
    @movies = Movie.id_sorted_only_specific_genre.page(params[:page]).per(12)
  end
end
