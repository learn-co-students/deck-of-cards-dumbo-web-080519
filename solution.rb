require "pry"
require_relative "./creatable"

class Deck
    include Creatable

    attr_reader :cards

    def initialize
        @cards = create_deck
    end

    def choose_card
        cards.delete_at(rand(cards.length))
    end

end

class Card

    attr_reader :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end

end
