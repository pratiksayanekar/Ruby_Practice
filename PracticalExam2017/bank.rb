require_relative 'account.rb'
class Bank

  def initialize
    @accounts = []
    @tellers = []
    @transactions = []
  end

  def add_account(acc)
    @accounts << acc
  end

  def add_transactions(t)
    @transactions << t
  end

  def add_teller(t)
    @tellers << t
  end

  def deposit(id, amount)
    acc = @accounts.select { |a| a.id == id }
    acc[0].deposit(amount)
  end

  def withdraw(id, amount)
    acc = @accounts.select { |a| a.id == id }
    acc[0].withdraw(amount)
  end

  def largest_bal
    max = 0
    @accounts.each do |a|
      a.balance > max
      max = a.balance
    end
    max.round(2)
  end

  def avg_acc_bal
    (total_funds / @accounts.size).round(2)
  end

  def total_funds
    sum = 0
    @accounts.each do |a|
      sum += a.balance
    end
    sum.round(2)
  end

  def process_transaction_randomly
    @transactions.size.times do
      tel = @tellers.sample
      tel.count += 1
    end
    @tellers.each(&:to_s)
  end

  def process_transaction_smartly
    @tellers.sort_by!(&:time)
    trans_per_teller = @transactions.size / @tellers.size
    @tellers.each do |t|
      t.count = trans_per_teller
    end
    @tellers.each(&:to_s)
  end

  def to_s
    @accounts.each(&:to_s)
  end

end
