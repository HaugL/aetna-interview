class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.integer :movieId
      t.text :imdbId, null: false
      t.text :title, null: false
      t.text :overview
      t.text :productionCompanies
      t.text :releaseDate
      t.integer :budget
      t.integer :revenue
      t.decimal :runtime
      t.text :language
      t.text :genres
      t.text :status
    end
  end
end
