require_relative 'bank'
class Transaction

  attr_reader :amount, :id
  attr_accessor :type


  def initialize(id, amount)
    @id, @amount = id, amount
    @type = if amount.to_f.positive?
              'deposit'
            else
              'withdraw'
            end
  end



  def to_s
    "#{@id}  and  #{@amount} and #{@type} "
  end

end