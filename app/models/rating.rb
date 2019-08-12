class Rating < RatingsDbBase

  def self.get_avg_rating(movie_id)
    ratings = self.where(movieId: movie_id)
    if ratings.length > 0
      sum = 0
      ratings.each do |rating|
        sum += rating.rating
      end

      return (sum/ratings.size).round(2)
    else
      return 0
    end
  end
end
