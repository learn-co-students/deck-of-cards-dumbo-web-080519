class Deck

  attr_reader :cards
    def initialize
      @cards = self.populate
    end


    def populate
      a_of_cards = []
      rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
      suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
      rank.each do |rank|
        suit. each do |suit|
          a_of_cards << Card.new(suit,rank)
        end
      end
        a_of_cards
    end

    def choose_card
      self.cards.delete(self.cards.sample)
    end

end

class Card
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
