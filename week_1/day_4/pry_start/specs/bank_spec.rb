require( 'minitest/autorun' )
require_relative( '../bank' )

class TestBank < MiniTest::Test

  def setup
    @bank = {
      name: "Royal Bank of Codeclan",
      accounts: [
        {
          holder: "Colin",
          deposits: [
            {type: "cash", amount: 10},
            {type: "cash", amount: 50}
          ]
        },
        {
          holder: "Louise"
          deposits: [
            {type: "cheque", amount: 100},
            {type: "cash", amount: 50}
          ]
        }
      ]
    }

  end

  def test_bank_name
    assert_equal("Royal Bank of Codeclan", get_bank_name(@bank))
  end

  def test_total_deposits
    assert_equal(210, total_deposits(@bank))
  end


end
