class TextsController < ApplicationController
  def index
    @texts = Text.recent
  end
end
