class Movie < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
end

# require "csv"

# csv_data = CSV.read("movie_data.csv", headers: true)
