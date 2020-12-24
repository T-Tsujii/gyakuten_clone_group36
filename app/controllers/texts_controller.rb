class TextsController < ApplicationController
  def index
    @texts = Text.id_sorted_only_specific_genre
  end
  def show
    @text = Text.find(params[:id])
  end
end