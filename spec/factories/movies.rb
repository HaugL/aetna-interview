FactoryGirl.define do
  factory :movie do
    title "Title"
    imdbId "Id"
    budget 50000000
    genres "[{}, {}]"
  end
end
