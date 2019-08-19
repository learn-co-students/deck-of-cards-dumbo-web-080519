class Deck
    attr_reader :cards
    def initialize
        @cards = self.generate_deck
    end 


    def generate_deck
        temp_deck = []

        suits = %w[Hearts Clubs Diamonds Spades]
        ranks = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

        suits.each do |suit|
            ranks.each do |rank|
                temp_deck << Card.new(suit, rank)
            end 
        end 
        temp_deck
    end 

    def choose_card
        #removes random card from deck and returns it 
        card = self.cards.sample
        self.cards.delete(card)
        card
    end 
end 

class Card
    attr_reader :suit, :rank
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end 
end
