json.imdb_id @movie.imdbId
json.title @movie.title
json.overview @movie.overview
json.release @movie.releaseDate
json.budget "#{number_to_currency(@movie.budget)}"
json.runtime @movie.runtime
json.rating @avg_rating
json.genres @movie.genres
json.language @movie.language
json.production_companies @movie.productionCompanies
