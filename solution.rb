class Deck
  
  def self.cards
    all_cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        all_cards << Card.new(suit, value)
      end
    end
    all_cards
  end
  
  attr_reader :cards
  def initialize(cards = Deck.cards)
    @cards = cards
  end

  def choose_card
    @cards.shift
  end
end


class Card
  SUIT_STRINGS = {
    clubs: '♣',
    diamonds: '♦',
    hearts: '♥',
    spades: '♠'
  }

  VALUE_STRINGS = {
    deuce: '2',
    three: '3',
    four: '4',
    five: '5',
    six: '6',
    seven: '7',
    eight: '8',
    nine: '9',
    ten: '10',
    jack: 'J',
    queen: 'Q',
    king: 'K',
    ace: 'A'
  }

  def self.suits
    SUIT_STRINGS.keys
  end

  
  def self.values
    VALUE_STRINGS.keys
  end

 attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end
