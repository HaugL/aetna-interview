require 'pagy'
include Pagy::Backend

class MoviesController < ApplicationController

  def index
    page = params['page'].to_i || 1
    if page == 0
      page = 1
    end

    if params['year']
      @pagy, @movies = pagy(Movie.search_by_year(params['year']), items: 50, page: page)
    else
      @pagy, @movies = pagy(Movie.all, items: 50, page: page)
    end
    render 'index'
  end

  def show
    @movie = Movie.find_by(movieId: params["id"])
    unless @movie.nil?
      @avg_rating = Rating.get_avg_rating(@movie.movieId)
      render "show"
    else
      render json: {
        error: "Movie does not exist"
      }, status: 400
    end
  end
end
