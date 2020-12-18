class TextsController < ApplicationController
  def index
    @texts = Text.id_sorted_only_specific_genre
  end
end
