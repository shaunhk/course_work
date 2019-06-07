class BankAccount

  # attr_reader :holder, :type, :balance
  # attr_writer :holder, :type, :balance
  attr_accessor :holder, :type, :balance

  def initialize(holder, balance, type)
      @holder = holder
      @balance = balance
      @type = type
  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_monthly_fee
    if @type == "business"
      @balance -= 50
    elsif @type == "personal"
      @balance -= 10
    end
  end

  # def get_holder_name
  #   return @holder
  # end
  #
  # def get_account_balance
  #   return @balance
  # end
  #
  # def get_account_type
  #   return @type
  # end
  #
  # def set_holder_name(name)
  #   @holder = name
  # end
  #
  # def set_balance(amount)
  #   @balance = amount
  # end
  #
  # def set_type(new_type)
  #   @type = new_type
  # end

end
