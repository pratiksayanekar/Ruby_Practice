require_relative 'bank.rb'
require_relative 'account'
require_relative 'transaction'
require_relative 'teller'
# ############# Question 1:
#
# bank = Bank.new
#
# # creating 3 accounts
# a1 = Account.new(1234)
# a2 = Account.new(4567)
# a3 = Account.new(6789)
#
# # Adding the account into bank
# bank.add_account(a1)
# bank.add_account(a2)
# bank.add_account(a3)
#
# # transactions on account:
# bank.deposit(1234,20.5)
# bank.deposit(4567,100)
# bank.deposit(6789,300.05)
#
# bank.withdraw(1234, 5)
# bank.withdraw(4567, 10.5)
# bank.withdraw(6789, 30.3)
#
# puts bank.to_s
#
# ############# Question 2:

bank2 = Bank.new

IO.foreach('accounts.txt') do |acc|
  bank2.add_account(Account.new(acc))
end

IO.foreach('transactions.txt') do |transaction|
  data = transaction.split
  t = Transaction.new(data[0].to_i, data[1].to_f)
  bank2.add_transactions(t)
  if t.type == 'deposit'
    bank2.deposit(t.id, t.amount)
  else
    bank2.withdraw(t.id, t.amount)
  end
end

puts bank2.to_s


# Question 3:

puts "max account balance in bank is: €#{bank2.largest_bal}"
puts "average account balance in bank is: €#{bank2.avg_acc_bal}"
puts "total amount of funds in bank is: €#{bank2.total_funds}"


# Question 4:

t1 = Teller.new('Jack',1)
t2 = Teller.new('Emma',2)
t3 = Teller.new('Paul',3)

bank2.add_teller(t2)
bank2.add_teller(t3)
bank2.add_teller(t1)


puts bank2.process_transaction_randomly

puts bank2.process_transaction_smartly











