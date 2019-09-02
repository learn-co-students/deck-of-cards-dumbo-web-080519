module Creatable
    def create_deck
        deck = []
        ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
        suits = %w(Hearts Diamonds Spades Clubs)
        ranks.each do |rank|
          suits.each do |suit|
            deck << Card.new(suit, rank)
          end
        end
        deck
    end
end
