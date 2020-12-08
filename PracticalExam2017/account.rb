class Account
  attr_reader :id, :balance

  def initialize(id)
    @id = id.to_i
    @balance = 0.0
  end

  def deposit(amount)
    @balance += amount.to_f
  end

  def withdraw(amount)
    @balance -= amount.to_f
  end

  def to_s
    "Account #{@id} contains €#{@balance.round(2)}"
  end
end
