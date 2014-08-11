class WelcomeController < ApplicationController
  before_filter :current_user
  def index
    if current_user
      @deck = Deck.new
      @decks = @current_user.decks.to_a
    end
  end
end
