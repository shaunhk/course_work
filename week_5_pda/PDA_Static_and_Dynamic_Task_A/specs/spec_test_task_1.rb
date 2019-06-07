require_relative('../testing_task_2.rb')
require('minitest/autorun')
require('minitest/rg')
require_relative('../card.rb')

class TestCard < MiniTest::Test

  def setup
    @ace = Card.new("spades", 1)
    @two_hearts = Card.new("hearts", 2)
    @king = Card.new("spades", 10)
    @cards = [@ace, @two_hearts, @king]
    @game = CardGame.new(@cards)
  end

  def test_card()
    assert_equal(@game.checkforAce(@ace), true)
  end
  #
  def test_card_false()
    assert_equal(@game.checkforAce(@king), false)
  end

  def test_highest_card
    assert_equal(@game.highest_card(@king, @two_hearts), @king)
  end
  
  def test_cards_total()
    assert_equal(@game.cards_total(@cards), "You have a total of 13")
  end


end
