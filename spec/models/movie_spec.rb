require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe "movie model" do

    it "won\'t save when missing title" do
      movie = Movie.create(imdbId: "IMDB_ID")
      expect(movie.errors["title"][0]).to eq("movies must have a title")
    end

    it "won't save when missing imdb id" do
      movie = Movie.create(title: "title")
      expect(movie.errors["imdbId"][0]).to eq("movies must have an imdb id")
    end

    it "save when title and imdb title are present" do
      movie = Movie.create(title: "title", imdbId: "Id")
      expect(Movie.first).to eq(movie)
    end
  end
end
