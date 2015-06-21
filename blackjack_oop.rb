# One or mutiple decks full of 52 cards each
# Two users, one dealer one player
# Deck us shuffled
# Card is dealt to player
# Card is dealt to dealer (player cannot see it)
# Card is dealt to player
# card is dealt to dealer (player can see it)
# Adds all user totals
# Anyone hit black jack?
# If not player can hit or stay
# IF hit get a new card
# Bust?
# If bust then lose
# If no bust can get another card or stay
# If stay dealer's turn
# If dealers hand is less than 17 then hit
# Bust?
# Compare users

class Deck_of_cards
  attr_accessor :deck

  def initialize
    @deck = []
    make_deck
  end

  def make_deck
    Card::SUITS.each do |suit|
      Card::FACES_AND_VALUES.each do |face, value|
        deck << Card.new(suit,face, value)
      end
    end
  end

  def shuffle_deck
    deck.shuffle!
  end

  def deal_card
    deck.shift
  end
end

class Card
  SUITS = ["spades", "clubs", "hearts", "diamonds"]
  FACES_AND_VALUES = {"2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, 
                      "9" => 9, "10" => 10, "J" => 10, "Q" => 10, "K" => 10, "A" => 11
                     } 
  def initialize(suit, face, value)
    @suit = suit
    @face = face
    @value = value
  end
end


class Player
  attr_accessor :hand

  def initialize
    hand = []
  end

  def hit(deck)
    hand << deck.deal_card
  end
  
  # draw a card
  # stay
  # total hand
  # check bust
  # check blacjack

end
=begin
class Dealer
  draw a card
  stay
  total hand
  check bust
  check blackjack

end

class Table
  draw table

end
=end



 @deck = Deck_of_cards.new
    @deck.shuffle_deck
    @player = Player.new
game = Game.new
game.test





