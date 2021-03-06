require_relative "./card.rb"

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    suits = [:hearts, :diamonds, :spades, :clubs]
    suits.each do |suit|
      (2..14).each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end
  def draw_card
    @cards.shift
  end
  def shuffle_up
    @cards.shuffle!
  end
end
