require "pry"

class Card
    suit = %w(Spades Hearts Clubs Diamonds)
    rank = %w(2 3 4 5 6 7 8 9 10 J Q K A)
    
    attr_reader :suit,:rank
    def initialize(suit,rank)
        @suit = suit
        @rank = rank  
        self
    end
end

class Deck
    @cards
    attr_accessor :cards

    def initialize
        @cards=[]
        rank = %w(2 3 4 5 6 7 8 9 10 J Q K A)
        suit = %w(Spades Hearts Clubs Diamonds)
        for i in suit
            for x in rank
                @cards << Card.new(x,i)
            end
        end
    end

    def deal
        @cards.pop
    end

    def shuffle
        self.cards.shuffle!
    end

    def return_card(card)
        #Needs to insert card to the front of the deck when discarded
        self
    end

  def choose_card
    @cards.shift
  end
  binding.pry
end


0