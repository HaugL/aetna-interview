class RatingsDbBase < ApplicationRecord
  self.abstract_class = true
  establish_connection RATINGS_DB
end
