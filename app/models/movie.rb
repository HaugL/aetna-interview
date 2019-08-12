class Movie < ApplicationRecord
  validates_presence_of :title, message: "movies must have a title"
  validates_presence_of :imdbId, message: "movies must have an imdb id"

  def self.search_by_year(year)
    # SQL Injection vulnerability
    return Movie.where("releaseDate LIKE ?", "%#{year}%")
  end
end
