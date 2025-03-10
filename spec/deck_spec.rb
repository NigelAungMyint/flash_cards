require './lib/deck'
require 'rspec'

describe Deck do
  describe '#initialize' do
    it 'is an instance of Deck' do
      cards = []
      deck = Deck.new(cards)

      expect(deck).to be_a Deck
    end

    it 'can have cards' do
      card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_1,card_2,card_3]
      deck = Deck.new(cards)

      expect(deck.cards).to eq [card_1,card_2,card_3]

    end

    it 'can count how many cards' do
      card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_1,card_2,card_3]
      deck = Deck.new(cards)

      expect(deck.count).to eq 3
    end
  end

  describe '#cards_in_category' do
    it 'returns cards based on a given category' do
      card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_1,card_2,card_3]
      deck = Deck.new(cards)

      expect(deck.cards_in_category(:STEM)).to eq [card_2, card_3]
      expect(deck.cards_in_category(:Geography)).to eq [card_1]
      expect(deck.cards_in_category(:Pop_culture)).to eq []
    end
  end
end
