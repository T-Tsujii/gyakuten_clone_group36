class Movie < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
end

require "csv"

csv_data = CSV.read("movie_data.csv", headers: true)
puts "start..."

File.open("movie_data.csv", "w") do |file|
  csv_data.each do |data|
    puts movie_msg
    file.write(movie_msg)
  end
end
