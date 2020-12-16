class Text < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  scope :specific_genre, -> { where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]) }
  scope :sorted, -> { order(id: :asc) }
  scope :recent, -> { specific_genre.sorted }
end
