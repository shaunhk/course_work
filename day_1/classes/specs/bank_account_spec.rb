require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test

  def setup
    @account = BankAccount.new("Shaun", 2000, "business")
    @account_2 = BankAccount.new("Joe", 5000, "personal")
  end

  def test_account_name
    assert_equal("Shaun", @account.holder())
  end

  def test_get_account_amount
    assert_equal(5000, @account_2.balance())
  end

  def test_get_balance
    assert_equal("personal", @account_2.type())
  end

  def test_set_account_name
    @account_2.holder = "Shelby"
    assert_equal("Shelby", @account_2.holder)
  end

  def test_set_balance
    @account_2.balance = 20000
    assert_equal(20000, @account_2.balance)
  end

  def test_set_type
    @account_2.type = "business"
    assert_equal("business", @account_2.type)
  end

  def test_pay_into_account
    @account.pay_in(1000)
    assert_equal(3000, @account.balance)
  end

  def test_direct_debit_business
    @account.pay_monthly_fee
    assert_equal(1950, @account.balance)
  end

  def test_direct_debit_personal
    @account_2.pay_monthly_fee
    assert_equal(4990, @account_2.balance)
  end
end
